.DEFAULT_GOAL:= help

.PHONY: edit-vault
edit-vault: ## Edit vaults
	ansible-vault edit vars/vault.yml --vault-password-file vault-password.txt

.PHONY: deploy
deploy: ## Edit vaults
	ansible-playbook playbook.yml -i hosts.ini -l prod -t deploy --vault-password-file vault-password.txt

.PHONY: run
run-dev: ## Edit vaults
	ansible-playbook playbook.yml -i hosts.ini -l prod --vault-password-file vault-password.txt

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-16s\033[0m %s\n", $$1, $$2}'