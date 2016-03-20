#!/usr/bin/env bash

sudo dnf -y install wget
wget https://storage.googleapis.com/golang/go1.6.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.6.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
export GOPATH=/vagrant/
go install hello
/vagrant/bin/hello
