#!/usr/bin/bash

# unattended full setup

if [ -z "${ENTITLEMENT_KEY}" ]; then
  echo "Missing entitlement key in environemnt variable ENTITLEMENT_KEY."
  exit 1
fi

if [ -z "${STORAGECLASS_RWO}" ]; then
  echoRed "Missing storage class for ReadWriteOnce in environemnt variable STORAGECLASS_RWO."
  exit 1
fi

if [ -z "${STORAGECLASS_RWM}" ]; then
  echoRed "Missing storage class for ReadWriteMany in environemnt variable STORAGECLASS_RWM."
  exit 1
fi

if [ -z "${DOMAIN_NAME}" ]; then
  echoRed "Missing domain name in environemnt variable DOMAIN_NAME."
  exit 1
fi

if [ ! -z "${OC_USERNAME}" ] && [ ! -z "${OC_PASSWORD}" ] && [ ! -z "${OC_URL}" ]; then
   oc login -u "${OC_USERNAME}" -p "${OC_PASSWORD}" "${OC_URL}"
fi

mkdir -p logs
rm -rf work/*

./mongo_setup.sh
./sb_setup.sh
./cert-manager_setup.sh
./bas_setup.sh
./sls_setup.sh

./get_setup_params.sh