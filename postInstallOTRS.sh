#!/usr/bin/env bash

yum install perl-DBD-Pg git -y
cd /opt/otrs
git clone https://github.com/Unotechsoftware/Hawk.git
cd Hawk
yes | cp -R * ../Kernel/
systemctl restart httpd
