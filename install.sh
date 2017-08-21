#!/bin/bash
#Copyright 2017 (c) www.shehab.me
RED='\033[01;31m'
GREEN='\033[01;32m'
RESET='\033[0m'
clear
echo -e "$GREEN*************************************************************$RESET"
echo -e "          TOSHOST LTD Server Package   Installation Wizard"
echo -e "          Copyright (c) 2017  shehab.me"
echo -e "          Coded by : Shehab Ahmed"
echo -e "$GREEN*************************************************************$RESET"
echo " "
echo " "
cd /usr/local/src/
# Install 
wget -c http://cdn.toshost.com/p/toshost_chkrootkit_install.sh
sh toshost_chkrootkit_install.sh
rm -f toshost_chkrootkit_install.sh

cd /usr/local/src/
wget -c http://cdn.toshost.com/p/toshsot_rkhunter_install.sh
sh toshost_rkhunter_install.sh
rm -f toshost_rkhunter_install.sh

cd /usr/local/src/
wget -c http://cdn.toshost.com/p/toshost_prm_install.sh
sh toshost_prm_install.sh
rm -f toshost_prm_install.sh

cd /usr/local/src/
wget -c http://cdn.toshost.com/p/toshost_spri_install.sh
sh toshost_spri_install.sh
rm -f toshost_spri_install.sh

cd /usr/local/src/
wget -c http://cdn.toshost.com/p/servicetweak.sh
sh servicetweak.sh
rm -f servicetweak.sh

cd /usr/local/src/
wget -c http://cdn.toshost.com/p/sethistory.sh
sh sethistory.sh
rm -f sethistory.sh

# Set dove cout 
/scripts/convert2dovecot
#cpupdate

cat > /etc/cpupdate.conf << EOF
CPANEL=release
RPMUP=daily
SARULESUP=daily
UPDATES=daily
EOF
/scripts/upcp --force
#Remove all source 

cd /usr/local/src/
rm -rf install_*
echo -e "$GREEN*************************************************************$RESET"
echo -e "          Installation is completed "
echo -e "$GREEN*************************************************************$RESET"

