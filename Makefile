SHELL := bash

# Run `help` by default if nothing is provided
.DEFAULT_GOAL := help

all: build up
.PHONY: all


# Ref: https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
help:
	@echo "$$(tput bold)Commands:$$(tput sgr0)";echo;
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort | awk 'BEGIN {FS = ":.*?## "}; {printf "%-30s%s\n", $$1, $$2}'


build: ## Builds all required containers
	@docker build -t jupyter-notebook .

jupyter: ## dev mode with rstudio
	@docker run -it --network host --rm -v "${PWD}":/home/jovyan/ jupyter-notebook

flow: ## dev mode with rstudio
	@docker run -it --network host --user root --rm -v "${PWD}":/home/jovyan/ jupyter-notebook python get-flow-nfstream.py