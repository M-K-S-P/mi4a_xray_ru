#!/bin/bash
source .env
echo "Running as root..."

sleep 3

clear

echo "Updating Please Wait..."


service passwall stop

cd /root/

rm -f install-passwall-panel.sh

wget -q https://raw.githubusercontent.com/${REPO}/main/owo.sh -O install-passwall-panel.sh

chmod 755 install-passwall-panel.sh

cd /etc/init.d/

rm -f /etc/init.d/passwall-init

wget -q https://raw.githubusercontent.com/${REPO}/main/amir -O passwall-init

chmod +x /etc/init.d/passwall-init

/etc/init.d/passwall-init enable

cd /root/


/etc/init.d/passwall-init start

echo -e "${GREEN} Update Completed ! ${ENDCOLOR}"
