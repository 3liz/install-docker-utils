#!/bin/sh

ENV_DIR=$HOME/.venvs/ansible
PIP=$ENV_DIR/bin/pip
BIN=$HOME/bin

mkdir -p $ENV_DIR $BIN

python3 -m venv $ENV_DIR
$PIP install -U pip setuptools wheel
$PIP install ansible

ansible_link () {
  ln -s $ENV_DIR/bin/$1 $BIN/$1
}

# Create symlink in ~/bin
ansible_link ansible
ansible_link ansible-config
ansible_link ansible-connection
ansible_link ansible-console
ansible_link ansible-doc
ansible_link ansible-galaxy
ansible_link ansible-inventory
ansible_link ansible-playbook
ansible_link ansible-pull
ansible_link ansible-test
ansible_link ansible-vault

