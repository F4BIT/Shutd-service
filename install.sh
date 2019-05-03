#! /bin/bash

#Creation d'un service via systemd by F4BIT Stéphane

echo "Creation d'un service Shutdown via systemd"
echo "INSTALLATION script"
cd /usr/bin/
wget https://minhaskamal.github.io/DownGit/#/home?url=https://github.com/F4BIT/Shutd-service/blob/master/shutdown.sh
chmod +x shutdown.sh

echo "Mise en place du service"
systemctl stop shutd.service
systemctl disable shutd.service
rm /lib/systemd/system/shutd.service
sleep 1

echo "Création du fichier de service"
echo "[Unit]" >> /lib/systemd/system/shutd.service
echo "Description=Shutd-Service" >> /lib/systemd/system/shutd.service
echo "After=multi-user.target" >> /lib/systemd/system/shutd.service
echo "" >> /lib/systemd/system/shutd.service
echo "[Service]" >> /lib/systemd/system/shutd.service
echo "Type=simple" >> /lib/systemd/system/shutd.service
echo "ExecStart=/usr/bin/shutdown.sh" >> /lib/systemd/system/shutd.service
echo "Restart=on-abort" >> /lib/systemd/system/shutd.service
echo "" >> /lib/systemd/system/shutd.service
echo "[Install]" >> /lib/systemd/system/shutd.service
echo "WantedBy=multi-user.target" >> /lib/systemd/system/shutd.service
chmod 644 /lib/systemd/system/shutd.service
systemctl daemon-reload
systemctl enable shutd.service

echo "Lancement du service"
systemctl start shutd.service
echo "Service Shutd-Service actif"