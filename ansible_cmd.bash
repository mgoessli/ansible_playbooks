#!/bin/bash
# Erstellen der Files für eine Übersicht der Systeme, die mit Ansible verwaltet werden
# nach https://techgoat.net/index.php?id=164
# Autor: Markus Gößling
# erstellt: 14.03.2021

cd /home/ansible/cmdb
ansible -m setup -i /etc/ansible/hosts --tree out/ all
ansible-cmdb out/  > /home/ansible/cmdb/out/index.html
sudo cp /home/ansible/cmdb/out/index.html /var/www/html/index.html
