#!/bin/bash

set -o nounset
set -o errexit
# trace each command execute, same as `bash -v myscripts.sh`
#set -o verbose
# trace each command execute with attachment infomations, same as `bash -x myscripts.sh`
#set -o xtrace

#set -o
set -e
#set -x

rm -rf ${PWD}/datas

mkdir -p ${PWD}/datas/bs_db/var/lib/mysql
mkdir -p ${PWD}/datas/bs_app/public/uploads
mkdir -p ${PWD}/datas/bs_app/storage/uploads

sudo chown -hR www-data:www-data ${PWD}/datas/bs_app/public/uploads
sudo chown -hR www-data:www-data ${PWD}/datas/bs_app/storage/uploads

