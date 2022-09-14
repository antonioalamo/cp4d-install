#!/bin/bash

source ./env-var-cpd.sh

# login cp4d cli openshift
cpd-cli manage login-to-ocp --token=$OCP_TOKEN --server=$OCP_URL

# get pull secret credentials from entitlement key
cpd-cli manage add-icr-cred-to-global-pull-secret ${IBM_ENTITLEMENT_KEY}

# check the cli nodes
cpd-cli manage oc get nodes

# apply OLM
cpd-cli manage apply-olm --release=${VERSION} --components=${COMPONENTS}

# previous oc login
oc patch NamespaceScope common-service -n ${PROJECT_CPFS_OPS} --type=merge \
--patch='{"spec": {"csvInjector": {"enable": true} } }'

# check the installation
cpd-cli manage get-olm-artifacts --subscription_ns=${PROJECT_CPFS_OPS}

# IBM Cloud Block Storage and File Storage 
cpd-cli manage apply-cr \
--components=${COMPONENTS} \
--release=${VERSION} \
--cpd_instance_ns=${PROJECT_CPD_INSTANCE} \
--block_storage_class=${STG_CLASS_BLOCK} \
--file_storage_class=${STG_CLASS_FILE} \
--license_acceptance=true

# get version and status.
cpd-cli manage get-cr-status \
--cpd_instance_ns=${PROJECT_CPD_INSTANCE}

# get credentials
cpd-cli manage get-cpd-instance-details \
--cpd_instance_ns=${PROJECT_CPD_INSTANCE} \
--get_admin_initial_credentials=true