#!/bin/bash
# Erstellen der Files für eine Übersicht der Systeme, die mit Ansible verwaltet werden
# nach https://techgoat.net/index.php?id=164
# Autor: Markus Gößling
# erstellt: 14.03.2021

cd /home/ansible/cmdb
ansible -m setup -i /etc/ansible/hosts
ansible-cmd /home/ansible/cmdb/out > /var/www/index.html