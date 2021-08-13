#!/bin/bash

HOSTNAME=`hostname | cut -d. -f1 | tr '[A-Z]' '[a-z]'`

m=`date +%-m`
d=`date +%-d`
yyyy=`date +%Y`

cd /usr/local/etc/stig/runscap

oscap xccdf eval --results ${HOSTNAME}_RHEL7-V3R3-STIG_${m}-${d}-${yyyy}.xml rhel7-v3r3-benchmark.xml

chmod 644 ${HOSTNAME}_RHEL7-V3R3-STIG_${m}-${d}-${yyyy}.xml
