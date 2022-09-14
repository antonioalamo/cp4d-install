## Install Cloud Pak for Data Operator

curl -v https://icr.io

https://github.com/IBM/cpd-cli.git

## cpd-cli tools for mac
```sh
./cli-cpd-install.sh
```

# Main installing page
https://www.ibm.com/docs/en/cloud-paks/cp-data/4.5.x?topic=installing

1. Setting up a client workstation

2. Collecting required information

    b. Determining the list of components that you plan to install

https://www.ibm.com/docs/en/cloud-paks/cp-data/4.5.x?topic=information-determining-which-components-install

# install cp4d

```sh
./cpd-install-post-env.sh
```

Components
IBM Cloud Pak® foundational services 	cpfs 	Required.

IBM Cloud Pak for Data 	cpd_platform

 components=cpfs,scheduler,cpd_platform,<component-ID>...

c. Collecting information about your cluster that can be used to set up environment variables

 Setting up installation environment variables

e. Do you plan to install any services that require custom SCCs?
Security Context: Permisos que tiene el container.

g. How are you going to access the software images?
icr.io



https://www.ibm.com/docs/en/cloud-paks/cp-data/4.5.x?topic=installing-setting-up-client-workstation
from Juan Luis Perez (IBM) to Everyone:    1:41  PM
https://www.ibm.com/docs/en/cloud-paks/cp-data/4.5.x?topic=requirements-client-workstation

Express installations


# Installing DataStage

https://www.ibm.com/docs/en/cloud-paks/cp-data/4.5.x?topic=datastage-installing

Create the OLM objects for DataStage:

```sh
source env-var-cpd.sh
source env-var-datastage.sh

./datastage-install.sh
```

FAQ Datastage and CP4d
https://ibm.ent.box.com/notes/880325611046?s=oov844aofjjk9zdayjd6ddubu87yiz2i