# Ansible configuration for setting up docker/lizmap environment

## Install Ansible in virtual-env

Install ansible in a virtual env (with python3 venv) in a way that the ansible
command will be accessible from `~/bin/`

You must first install python3-venv with `sudo apt install python3-venv`.

```
> ./install-ansible.sh
```


## Install docker

Install `docker-ce`, `docker-ce-cli`, `docker compose plugin`:

```
> ./play --tags=docker
```


## Configure lizmap user 

Create a system `lizmap` user and group and a lizmap directory in `/srv/`:

```
> ./play --tags=lizmap-user
```


