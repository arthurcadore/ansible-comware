#!/bin/bash

echo "Starting Ansible playbooks..."
# ansible-playbook -i /inventory/hosts.yml /playbooks/modules/aaa.yml
# ansible-playbook -i /inventory/hosts.yml /playbooks/modules/acl.yml
ansible-playbook -i /inventory/hosts.yml /playbooks/modules/bfd.yml
