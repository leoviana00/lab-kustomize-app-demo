#!/bin/sh

kubespray_ssh(){
    echo "Setiing keys Kubespray"
    yes "y" | ssh-keygen -t rsa -C "kubespray@gmail.com" -f ../keys/kubespray -N "" 
    sudo ls -la ../keys
    echo "Createdkeys Kubespray"
}

main(){
    kubespray_ssh
}

main