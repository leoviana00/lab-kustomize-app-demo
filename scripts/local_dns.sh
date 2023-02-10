#!/bin/sh

if [[ ${EUID} -ne 0 ]]; then
    echo "Esse script deve ser executado como root." > /dev/stderr
    exit 1
fi

config_hosts(){
echo "Setting DNS Local /etc/hosts"
cat >>/etc/hosts<<EOF
# Lab Kustomize - DNS Local para o demo-app
192.168.1.11   demo.app.lab.k8s.io
# Balanceado - DNS Local para o lb
192.168.1.11   lb.lab.k8s.io
EOF
}

main(){
    config_hosts
}

main