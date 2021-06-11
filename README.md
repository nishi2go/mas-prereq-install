# mas-prereq-install
Prereq software installation script for Maximo Application Suite 8.4

"""
$ yum install jq gettext git wget
$ git clone --recursive https://github.com/nishi2go/mas-prereq-install
$ cd mas-prereq-install
# Get your key from https://myibm.ibm.com/products-services/containerlibrary
$ export ENTITLEMENT_KEY=<Your entitlement key>
$ export MONGO_REPLICAS=3
# Specify your storage class https://kubernetes.io/docs/concepts/storage/persistent-volumes/
$ export STORAGECLASS_RWO=ibmc-block-bronze
$ export STORAGECLASS_RWM=ibmc-file-bronze-gid
$ export DOMAIN_NAME=apps-crc.testing
$ oc login -u kubeadmin -p ************ https://api.crc.testing:6443
$ bash setup.sh
"""