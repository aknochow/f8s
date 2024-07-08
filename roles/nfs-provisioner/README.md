# NFS Provisioner Role

This Ansible role is used to install and configure the NFS provisioner in a Kubernetes cluster using Helm.

* https://github.com/kubernetes-sigs/nfs-subdir-external-provisioner

## Prerequisites

- Ansible
- Helm
- Kubernetes cluster

## Usage

1. Clone this repository to your local machine.
2. Navigate to the directory containing the role.
3. Run the playbook using the following command:

```bash
ansible-playbook configure-nfs-provisioner.yaml
```

## Role Tasks
Here's what the role does:

* Checks if Helm is installed, if not, it installs Helm.
* Adds the NFS provisioner Helm repository.
* Updates Helm repositories.
* Checks if NFS provisioner is already installed.
* If NFS provisioner is not installed, it installs the NFS provisioner using Helm.

## Variables
This role does not require any variables.  But a custom kubeconfig_path can be set to be used.

* kubeconfig_path: /path/to/kubeconfig

## Contributing
If you want to contribute to this project, please submit a pull request.

## License
This project is licensed under the MIT License.
