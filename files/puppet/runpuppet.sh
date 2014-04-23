#!/bin/bash -l
PUPPETLOG=/var/log/puppet/runpuppet.log
DATE=`date`
echo "[$DATE] Running Puppet..." >> $PUPPETLOG
puppet apply --modulepath ./modules manifests/site.pp 2>&1 >>$PUPPETLOG
echo "[$DATE] Done running Puppet..." >> $PUPPETLOG

