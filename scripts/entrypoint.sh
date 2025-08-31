#!/bin/bash

echo "Starting Ansible playbooks..."
ansible-playbook -i /inventory/hosts.yml /playbooks/switch.yml