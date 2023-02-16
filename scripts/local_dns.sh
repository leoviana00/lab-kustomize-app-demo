#!/bin/sh

if [[ ${EUID} -ne 0 ]]; then
    echo "Esse script deve ser executado como root." > /dev/stderr
    exit 1
fi

config_hosts(){
echo "Setting DNS Local /etc/hosts"
cat >>/etc/hosts<<EOF
# Lab Kustomize - DNS Local para aplicacao demo nginx e go
10.0.2.206   squad.a.nginx.lab.k8s.io
10.0.2.206   ws.dev.squad.a.go.lab.k8s.io
10.0.2.206   ws.hom.squad.a.go.lab.k8s.io
10.0.2.206   ws.squad.a.go.lab.k8s.io

# Balanceador - DNS Local para o lb
10.0.2.206   lb.lab.k8s.io 

# Argocd - DNS local para o argocd
10.0.2.206   argocd.lab.k8s.io
EOF
}

main(){
    config_hosts
}

main