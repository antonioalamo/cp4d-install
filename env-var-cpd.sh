#===============================================================================
# Cloud Pak for Data installation variables
#===============================================================================

# ------------------------------------------------------------------------------
# Cluster
# ------------------------------------------------------------------------------

export OCP_URL=https://c106-e.us-south.containers.cloud.ibm.com:32029
export OPENSHIFT_TYPE=roks
# export OCP_USERNAME=<enter your username>
# export OCP_PASSWORD=<enter your password>
export OCP_TOKEN=sha256~u5Vi8x4wiR29sIJT6DqTLHnJHQ9sek1f6KiFLLmjvug 


# ------------------------------------------------------------------------------
# Projects
# ------------------------------------------------------------------------------

# oc new-project cp4d-data --display-name "Cloud Pak for Data"

export PROJECT_CPFS_OPS=ibm-common-services        
export PROJECT_CPD_OPS=cp4d-operator
export PROJECT_CATSRC=openshift-marketplace
export PROJECT_CPD_INSTANCE=cp4d-lab
# export PROJECT_TETHERED=<enter the tethered project>


# ------------------------------------------------------------------------------
# Storage
# ------------------------------------------------------------------------------

export STG_CLASS_BLOCK=ibmc-block-gold
export STG_CLASS_FILE=ibmc-file-gold-gid

# ------------------------------------------------------------------------------
# IBM Entitled Registry
# ------------------------------------------------------------------------------

export IBM_ENTITLEMENT_KEY=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJJQk0gTWFya2V0cGxhY2UiLCJpYXQiOjE2MzczNDUyNzksImp0aSI6ImM1MDZiOTUxZTNkZTQ5MTU5MzgzZTQ1OGU0NjM0MDg0In0.lYbUbMx5ZefAbHCmqnDra1nl26wRHbMYygkNnSBuD5w


# ------------------------------------------------------------------------------
# Private container registry
# ------------------------------------------------------------------------------
# Set the following variables if you mirror images to a private container registry.
#
# To export these variables, you must uncomment each command in this section.

# export PRIVATE_REGISTRY_LOCATION=<enter the location of your private container registry>
# export PRIVATE_REGISTRY_PUSH_USER=<enter the username of a user that can push to the registry>
# export PRIVATE_REGISTRY_PUSH_PASSWORD=<enter the password of the user that can push to the registry>
# export PRIVATE_REGISTRY_PULL_USER=<enter the username of a user that can pull from the registry>
# export PRIVATE_REGISTRY_PULL_PASSWORD=<enter the password of the user that can pull from the registry>


# ------------------------------------------------------------------------------
# Cloud Pak for Data version
# ------------------------------------------------------------------------------

export VERSION=4.5.2


# ------------------------------------------------------------------------------
# Components
# ------------------------------------------------------------------------------
# Set the following variable if you want to install or upgrade multiple components at the same time.
#
# To export the variable, you must uncomment the command.

export COMPONENTS=cpfs,cpd_platform