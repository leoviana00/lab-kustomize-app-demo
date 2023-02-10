#!/bin/bash

if [[ ${EUID} -ne 0 ]]; then
    echo "Esse script deve ser executado como root." > /dev/stderr
    exit 1
fi

vbox_config(){
    echo "Creating directory vbox ..."
    sudo mkdir /etc/vbox
    echo "Directory created!"
}

vbox_networks_conf(){
    echo "Creating networks.conf..."
    cd /etc/vbox
    echo "* 0.0.0.0/0 ::/0" > networks.conf
    echo "Networks.conf created!"
}

main(){
    vbox_config
    vbox_networks_conf
}

main
