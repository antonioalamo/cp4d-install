#!/bin/bash

# set env variables of cpd and datastage
source ./env-var-cpd.sh
source ./env-var-datastage.sh

# login
cpd-cli manage login-to-ocp --token=$OCP_TOKEN --server=$OCP_URL

# Create the OLM objects for DataStage:
cpd-cli manage apply-olm --release=${VERSION} --cpd_operator_ns=${PROJECT_CPD_OPS} --components=${DATASTAGE_TYPE}

# For IBM Cloud Block and Storage
cpd-cli manage apply-cr --components=${DATASTAGE_TYPE} --release=${VERSION} --cpd_instance_ns=${PROJECT_CPD_INSTANCE} \
--block_storage_class=${STG_CLASS_BLOCK} --file_storage_class=${STG_CLASS_FILE} --license_acceptance=true

# Validating the installation
cpd-cli manage get-cr-status --cpd_instance_ns=${PROJECT_CPD_INSTANCE} --components=${DATASTAGE_TYPE}