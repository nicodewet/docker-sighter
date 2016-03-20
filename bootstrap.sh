#!/usr/bin/env bash

sudo dnf -y install wget
wget https://storage.googleapis.com/golang/go1.6.linux-amd64.tar.gz
# To verify the checksum by inspection, please see: https://golang.org/dl/ 
EXPECTED_SHA256_CHECKSUM="5470eac05d273c74ff8bac7bef5bad0b5abbd1c4052efbdbc8db45332e836b0b"
sudo tar -C /usr/local -xzf go1.6.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
export GOPATH=/vagrant/
go install hello
/vagrant/bin/hello
