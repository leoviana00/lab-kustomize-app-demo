#!/bin/sh

if [[ ${EUID} -ne 0 ]]; then
    echo "Esse script deve ser executado como root." > /dev/stderr
    exit 1
fi

config_hosts(){
echo "Setting DNS Local /etc/hosts"
cat >>/etc/hosts<<EOF
# Lab Kustomize - DNS Local
192.168.1.11   demo.app.lab.k8s.io
EOF
}

main(){
    config_hosts
}

main