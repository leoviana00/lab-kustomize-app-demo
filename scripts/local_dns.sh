#!/bin/sh

if [[ ${EUID} -ne 0 ]]; then
    echo "Esse script deve ser executado como root." > /dev/stderr
    exit 1
fi

config_hosts(){
echo "Setting DNS Local /etc/hosts"
cat >>/etc/hosts<<EOF
# Lab Harbor - Balanceador
192.168.1.11   lb.lab.k8s.io

# Lab Harbor - database
192.168.1.11   db.lab.k8s.io
EOF
}

main(){
    config_hosts
}

main