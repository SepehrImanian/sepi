#!/bin/bash

# install dependency

if [ -z "$1" ] || [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
   echo "you should use ubuntu/centos for first flag like this:"
   echo "./setup.sh ubuntu/centos"
   exit 1
fi

DISTRO=$1

check_pakage_install() {
   if [[ $DISTRO = "centos" ]]; then
	yum install -y curl wget
   elif [[ $DISTRO = "ubuntu" ]]; then
        apt install -y curl wget
   fi
}

check_pakage_install

# install nodejs
echo "---------------- install nodejs -----------------"

node_ubuntu_install() {
   curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
   sudo apt-get install -y nodejs
}

node_centos_install() {
   curl -sL https://rpm.nodesource.com/setup_12.x | bash -
   yum install -y nodejs
}

# install mongodb
echo "---------------- install mongodb -----------------"

mongo_ubuntu_install() {
   wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
   echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
   sudo apt-get update
   sudo apt-get install -y mongodb-org
   sudo systemctl start mongod
   sudo systemctl enable mongod
}

mongo_centos_install() {
   cp mongodb-org-4.4.repo /etc/yum.repos.d/mongodb-org-4.4.repo
   yum install -y mongodb-org
   systemctl start mongod
   systemctl enable mongod
}

if [[ $DISTRO = "centos" ]]; then
	node_centos_install
        mongo_centos_install
elif [[ $DISTRO = "ubuntu" ]]; then
	node_ubuntu_install
        mongo_ubuntu_install
fi

# install nodemon
echo "---------------- install nodemon -----------------"
npm i -g nodemon

