# Ansible Comware Appliance

This project provides a containerized environment to manage and automate **Comware devices** using **Ansible**.  
It is packaged with Docker Compose to simplify setup, testing, and execution of Ansible playbooks.

---

## Overview

The appliance includes:

- **Ansible + Comware modules**  
  Enables automation of Comware-based network devices using Ansible playbooks.

- **Preconfigured Docker Environment**  
  A Dockerfile and docker-compose configuration to build and run the Ansible environment with all dependencies.

- **Inventory and Playbooks**  
  Example inventory and playbook files to help you quickly start automating Comware devices.

---

## Setup

1. Clone the repository:

```bash
git clone https://github.com/arthurcadore/ansible-comware.git
cd ansible-comware
```

2. Setup variables in: 

- `inventory/`: Device hostnames, username and password.
- `playbooks/`: Playbooks to be executed.
- `config/hosts.conf`: Hosts file to be used by the container.
- `entrypoint.sh`: Script to be executed when the container starts.

3. Build and run the container:

```bash
make
```