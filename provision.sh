#!/bin/bash
sudo apt-get update >/dev/null
sudo apt-get -y install curl >/dev/null
sudo apt-get -y install wget >/dev/null
sudo apt-get -y install vim >/dev/null
sudo apt-get -y install openjdk-7-jdk >/dev/null

cd /home/vagrant

echo "download zookeeper"
wget --progress=dot http://apache.mirrors.lucidnetworks.net/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz >/dev/install 2&>1
echo "untar zookeeper"
tar xzf zookeeper-3.4.6.tar.gz >/dev/install 2&>1
sudo chown vagrant:vagrant zookeeper-3.4.6

echo "download solr"
wget --progress=dot http://apache.cs.utah.edu/lucene/solr/4.10.2/solr-4.10.2.tgz >/dev/null 2&>1
sudo chown vagrant:vagrant solr-4.10.2.tgz
echo "untar solr"
tar xzf solr-4.10.2.tgz
sudo chown vagrant:vagrant solr-4.10.2

if [ ! -e "/etc/solr" ]; then
	sudo mkdir /etc/solr
	sudo chown vagrant:vagrant /etc/solr
fi
if [ ! -e "/etc/solr/data" ]; then
	sudo mkdir /etc/solr/data
	sudo chown vagrant:vagrant /etc/solr/data
	sudo mkdir /etc/solr/data/
	sudo chown /
fi
if [ ! -e "/etc/solr/zk_data" ]; then
	sudo mkdir /etc/solr/zk_data
	sudo chown vagrant:vagrant /etc/solr/zk_data
fi


