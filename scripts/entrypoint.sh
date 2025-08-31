#!/bin/bash

echo "Starting Ansible playbooks..."

# Execute a ping test
ansible-playbook -v -i /inventory/hosts.yml /playbooks/modules/ping.yml

# Execute a command test
ansible-playbook -v -i /inventory/hosts.yml /playbooks/modules/command.yml

# Execute a interface state test
ansible-playbook -v -i /inventory/hosts.yml /playbooks/modules/intfState.yml

# Execute a lldp test
ansible-playbook -v -i /inventory/hosts.yml /playbooks/modules/lldp_global.yml
ansible-playbook -v -i /inventory/hosts.yml /playbooks/modules/lldp.yml

# Execute a neighbors test
ansible-playbook -v -i /inventory/hosts.yml /playbooks/modules/neighbors.yml

# Execute a snmp community test
ansible-playbook -v -i /inventory/hosts.yml /playbooks/modules/snmp_community.yml