#!/bin/bash
dnf install ansible -y
cd /tmp
git clone https://github.com/SAMARA-REDYY-JUNNA/expense-ansible-roles1.git
cd expense-ansible-roles1
ansible-playbook main.yaml -e component=backend -e login_password=ExpenseApp1
ansible-playbook main.yaml -e component=frontend