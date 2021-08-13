#!/bin/sh
#
#

cd /usr/local/etc/stig/runscap

/usr/bin/oscap xccdf eval rhel7-v3r1-benchmark.xml > stig.txt

/usr/local/etc/stig/runscap/failed_oscap_rules-rh7.py
