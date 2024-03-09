#!/bin/sh
# Prepare host for f8s playbook

RPM_PACKAGES="ansible-core"
COLLECTIONS="kubernetes.core"

if ! [ -f /etc/os-release ]; then
    echo -e "ERROR - /etc/os-release not found"
    echo -e "(f8s requires Fedora or Fedora CoreOS)\n"
    exit 1
fi

source /etc/os-release

if [[ "$PRETTY_NAME" == "Fedora Linux"* ]]; then
    RPM_MANAGER=DNF
elif [[ "$PRETTY_NAME" == "Fedora CoreOS"* ]]; then
    RPM_MANAGER=OSTREE
    # TODO - Remove this when CoreOS support is complete.
    echo -e "(f8s support for Fedora CoreOS is not yet ready, check back soon!)\n"
    exit 1
else
    echo -e "ERROR - Fedora Linux not detected."
    echo -e "(f8s requires Fedora!)\n"
    exit 1
fi

echo -e "\nOperating System: $PRETTY_NAME"
echo -e "RPM Package Manager: $RPM_MANAGER\n"

echo -e "Installing packages...\n"

if [[ "$RPM_MANAGER" == "DNF" ]]; then
    sudo dnf install -y $RPM_PACKAGES
elif [[ "$RPM_MANAGER" == "OSTREE" ]]; then
    sudo rpm-ostree install $RPM_PACKAGES
fi

echo -e "\nInstalling collections...\n"

# Ansible-Galaxy Collections
ansible-galaxy collection install $COLLECTIONS