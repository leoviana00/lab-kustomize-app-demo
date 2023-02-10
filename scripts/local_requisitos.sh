#!/bin/bash

#colors
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
IYELLOW='\033[1;33m'
BWhite='\033[1;37m'

so_update(){
    echo -e "${GREEN} Updating SO ...${NC}"
    sudo apt-get update -y >/dev/null 2>&1
    echo -e "${IYELLOW} SO Updated! ${NC}"
}

docker_install(){
    echo -e "${GREEN} Setting Docker ...${NC}"
    curl -fsSL https://get.docker.com | bash >/dev/null 2>&1
    usermod -aG docker ${USER}
    chmod 777 /var/run/docker.sock
    echo -e "${IYELLOW} Docker is running! ${NC}"
}

docker_compose_install(){
    echo -e "${GREEN} Setting Docker Compose ...${NC}"
    sudo apt install docker-compose -y >/dev/null 2>&1
    echo -e "${IYELLOW} Docker Compose is running! ${NC}"
}

git_install(){
    echo "Setting Git"
    sudo apt-get install git-all -y >/dev/null 2>&1
    echo "Git is running!"
}

htop_install(){
    echo "Setting Htop"
    sudo apt-get install htop -y >/dev/null 2>&1
    echo "Htop is running!"
}

openssh_install(){
    echo "Setting Openssh"
    sudo apt-get install openssh-server -y >/dev/null 2>&1
    echo "Openssh is running!"
}

cowsay_install(){
    echo "Setting Cowsay"
    sudo apt list --installed 2> /dev/null | grep -i cowsay
    echo "Cowsay is running!"
}

vim_install(){
    echo "Setting Vim"
    sudo apt-get install vim -y >/dev/null 2>&1
    echo "Vim is running!"
}

netcat_install(){
    echo "Setting Netcat"
    sudo apt-get install netcat -y >/dev/null 2>&1
    echo "Netcat is running!"
}

telnet_install(){
    echo "Setting Telnet"
    sudo apt-get install telnetd -y >/dev/null 2>&1
    echo "Telnet is running!"
}

virtualbox_install(){
    echo -e "${GREEN} Setting Virtualbox ${NC}"
    sudo apt-get install virtualbox -y >/dev/null 2>&1
    vboxmanage --version
    echo -e "${IYELLOW} Virtualbox is running! ${NC}"
}

vagrant_install(){
    echo -e "${GREEN}Setting Vagrant ${NC}"
    sudo apt-get install vagrant -y >/dev/null 2>&1
    vagrant --version
    echo -e "${IYELLOW} Vagrant is running! ${NC}"
}

ansible_install(){
    echo -e "${GREEN}Setting Ansible ${NC}"
    sudo apt-get install ansible -y >/dev/null 2>&1
    ansible --version
    echo -e "${IYELLOW} Ansible is running! ${NC}"
}

python3-pip_install(){
    echo -e "${GREEN}Setting Python 3 - PIP ${NC}"
    sudo apt install python3-pip >/dev/null 2>&1
    echo -e "${IYELLOW} Python 3 - PIP is running! ${NC}"
}

install_ansible_pip3(){
    echo -e "${GREEN}Setting Python 3 - PIP ${NC}"
    pip3 install ansible
    ansible --version
    echo -e "${IYELLOW} Ansible is running! ${NC}"
}

flameshot_install(){
    echo -e "${GREEN}Setting Flameshot ${NC}"
    sudo apt install flameshot -y >/dev/null 2>&1
    flameshot --version
    echo -e "${IYELLOW} Flameshot is running! ${NC}"
}

lens_install(){
    echo -e "${GREEN}Setting Lens Desktop IDE ${NC}"
    curl -fsSL https://downloads.k8slens.dev/keys/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/lens-archive-keyring.gpg > /dev/null
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/lens-archive-keyring.gpg] https://downloads.k8slens.dev/apt/debian stable main" | sudo tee /etc/apt/sources.list.d/lens.list > /dev/null
    sudo apt update
    sudo apt install lens
    echo -e "${IYELLOW} Lens is running! ${NC}"
}

main(){
    so_update
    docker_install
    docker_compose_install
    virtualbox_install
    vagrant_install
    ansible_install
}

main

