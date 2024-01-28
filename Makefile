default: help

.PHONY: help
help: 
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

PLAYBOOK?=site.yml
.PHONY: run
run: ## run the playbook
	ansible-playbook -i hosts.ini $(PLAYBOOK) $(ARGS)

.PHONY: galaxy/init
galaxy/init: ## create a new role
	ansible-galaxy init --init-path=roles $(ROLE)