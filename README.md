# f8s - Kubernetes on Fedora

## Requirements:

Operating System
- Fedora or Fedora CoreOS (tested on 38+)

RPM Packages:
- ansible-core 
- git-core

Collections:
- community.kubernetes

### Install Requirements

Install the requirements by running the prepare.sh script or manually running the commands.

#### Script:
```
bash prepare.sh
```

#### Manual Commands (Fedora):
```
sudo dnf install ansible-core git-core

ansible-galaxy collection install community.kubernetes
```