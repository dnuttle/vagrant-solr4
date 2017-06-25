#!/bin/bash
echo "apt-get update"
sudo apt-get update >/dev/null
echo "install curl"
sudo apt-get -y install curl >/dev/null
echo "install wget"
sudo apt-get -y install wget >/dev/null
echo "install vim"
sudo apt-get -y install vim >/dev/null
echo "install openjdk-7-jdk"
sudo apt-get -y install openjdk-7-jdk >/dev/null

cd /home/vagrant

echo "download zookeeper"
wget --progress=dot http://apache.mirrors.lucidnetworks.net/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz >/dev/install 2&>1
echo "untar zookeeper"
tar xzf zookeeper-3.4.6.tar.gz >/dev/install 2>&1
sudo chown vagrant:vagrant zookeeper-3.4.6

echo "download solr"
wget --progress=dot http://archive.apache.org/dist/lucene/solr/4.10.2/solr-4.10.2.tgz >/dev/null 2&>1
sudo chown vagrant:vagrant solr-4.10.2.tgz
echo "untar solr"
tar xzf solr-4.10.2.tgz
sudo chown vagrant:vagrant solr-4.10.2

if [ ! -e "/opt/solor" ]; then
	sudo mkdir /opt/solr
	sudo chown vagrant:vagrant /opt/solr
	mv solr-4.10.2 /opt/solr
fi

if [ ! -e "/opt/zookeeper" ]; then
	sudo mkdir /opt/zookeeper
	sudo chown vagrant:vagrant /opt/zookeeper
	mv zookeeper-3.4.6 /opt/zookeeper
fi

if [ ! -e "/etc/solr" ]; then
	sudo mkdir /etc/solr
	sudo chown vagrant:vagrant /etc/solr
fi
if [ ! -e "/etc/solr/data" ]; then
	sudo mkdir /etc/solr/data
	sudo chown vagrant:vagrant /etc/solr/data
fi
if [ ! -e "/etc/solr/zk_data" ]; then
	sudo mkdir /etc/solr/zk_data
	sudo chown vagrant:vagrant /etc/solr/zk_data
fi


