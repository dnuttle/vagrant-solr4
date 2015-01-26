vagrant-solr4.10.2
=============

Vagrant template for creating a simple solr4 virtual box based on the 'precise64' base box.

The plan is eventually to create several different Vagrant files/provision scripts, for difference scenarios.  This is the simplest.

1. Basic Installation
```
vagrant up
```
2. Start solr

See the Solr Cloud wiki for notes on how to start a single-instance, or multi-node cloud instance, of Solr.

Provisioning is done via shell script.  Note that zookeeper is downloaded and installed, but it doesn't have to be used.  You can use an embedded version of zookeeper when starting Solr.  Or you can start up the installed version and specify it.