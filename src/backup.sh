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



sudo cp -a ${PWD}/datas ${PWD}/datas_bak_"$(date +%Y%m%d-%H%M%S)" 

