#!/bin/sh

set -o nounset
set -o errexit

which frps
ls -al /etc/frp/frpc.toml
cat /etc/frp/frpc.toml
/usr/bin/frpc -c /etc/frp/frpc.toml

