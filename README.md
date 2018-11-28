### PYerevan Ansible Workshop (deployment scripts)

This repository is responsible for provisioning and deployment of django [app](https://github.com/PYerevan/ansible-application)

Required steps for using the repository

* [Install](https://docs.ansible.com/ansible/2.7/installation_guide/intro_installation.html) Ansible
* Clone ansible [repo](https://github.com/PYerevan/ansible-deploy)
* Copy hosts.ini.dist to hosts.ini
* Replace the placeholder with your server IP (make sure, that you have an ssh access to the server)
* Use appropriate command to edit parameters in vault then deploy the application

### Commands

Edit vault file

```ansible-vault edit vars/vault.yml --vault-password-file vault-password.txt

Edit vault file

```ansible-vault edit vars/vault.yml --vault-password-file vault-password.txt```

Deploy

```ansible-playbook playbook.yml -i hosts.ini -l prod -t deploy```

Run all recipes

```ansible-playbook playbook.yml -i hosts.ini -l prod --vault-password-file vault-password.txt```