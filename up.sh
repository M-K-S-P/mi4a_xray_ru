#!/bin/bash
source .env
echo "Running as root..."

sleep 3

clear

echo "Updating Please Wait..."

service passwall stop

cd /root/

rm owo.sh

wget https://raw.githubusercontent.com/${REPO}/main/owo.sh

chmod 777 owo.sh

cd /etc/init.d/

rm amir

wget https://raw.githubusercontent.com/${REPO}/main/amir

chmod +x /etc/init.d/amir

/etc/init.d/amir enable

cd /root/

/etc/init.d/amir start

echo -e "${GREEN} Update Complated ! ${ENDCOLOR}"
