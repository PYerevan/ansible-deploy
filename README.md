### Commands

Edit vault file

```ansible-vault edit vars/vault.yml --vault-password-file vault-password.txt```

Deploy

```ansible-playbook playbook.yml -i hosts.ini -l prod -t deploy```

Run all recipes

```ansible-playbook playbook.yml -i hosts.ini -l prod --vault-password-file vault-password.txt```