# f8s - Kubernetes on Fedora
f8s is an [Ansible](https://www.ansible.com) playbook for deploying [Kubernetes](https://kubernetes.io) on [Fedora](https://fedoraproject.org)

This playbook is intended to be run against a remote host but can also be used on your local machine if running Fedora.

#### Note - The playbook is currently still being developed and isn't finished yet.  Please stay tuned for updates!

#### Supported Operating Systems:
- Fedora Cloud (https://fedoraproject.org/cloud)
- Fedora Server (https://fedoraproject.org/server)
- Fedora Workstation (https://fedoraproject.org/workstation)

## Requirements:
You must have [Ansible](https://www.ansible.com) and the [Kubernetes collection](https://galaxy.ansible.com/ui/repo/published/kubernetes/core) installed on the host running the playbook.

#### Ansible: [(Read the official guide for installing Ansible)](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

#### Kubernetes collection:
```
ansible-galaxy collection install kubernetes.core
```
#### Script for preparing Fedora hosts:
The following script is available for preparing Fedora hosts:
```
bash prepare-fedora.sh
```

## Usage
Run the playbook:
```
ansible-playbook f8s.yaml
```

> Note - The playbook isn't finished yet.  Currently working on the main kubernetes role.