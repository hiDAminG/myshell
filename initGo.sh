#!/bin/bash

url='https://golang.org/dl/go1.16.4.linux-amd64.tar.gz'
if [ ! -n "$1" ] 
then
   echo 'use default url'
else
   url=$1
   echo "download url:$url"
fi
wget $url

tar -C /usr/local -xzf go*.tar.gz


echo export PATH=$PATH:/usr/local/go/bin >>/etc/profile

export PATH=$PATH:/usr/local/go/bin

go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.cn,direct