#!/usr/bin/env bash

########################
# Build Small Binary 
########################

sudo dnf -y install wget
wget https://storage.googleapis.com/golang/go1.6.linux-amd64.tar.gz
# To verify the checksum by inspection, please see: https://golang.org/dl/ 
EXPECTED_SHA256_CHECKSUM="5470eac05d273c74ff8bac7bef5bad0b5abbd1c4052efbdbc8db45332e836b0b"
FOUND_SHA256_CHECKSUM=$(sha256sum go1.6.linux-amd64.tar.gz | awk '{print $1;}')
echo $EXPECTED_SHA256_CHECKSUM
echo $FOUND_SHA256_CHECKSUM
if [ "$EXPECTED_SHA256_CHECKSUM" != "$FOUND_SHA256_CHECKSUM" ]; then
	echo "Checksum failed"
	exit 1;
else
	echo "Checksum passed"
fi
sudo tar -C /usr/local -xzf go1.6.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
export GOPATH=/vagrant/
go install hello
/vagrant/bin/hello

############################
# Build Docker Sighter Image
############################

sudo dnf -y update
sudo tee /etc/yum.repos.d/docker.repo <<-'EOF'
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/fedora/$releasever/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
EOF
sudo dnf -y install docker-engine
sudo systemctl start docker
cd /vagrant/
sudo docker build -t sighter .
sudo docker run sighter
