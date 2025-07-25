.PHONY: help setup dev build test lint fmt deploy clean

help:
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-18s\033[0m %s\n", $$1, $$2}'

setup: ## Install tools, setup env
	bash ./scripts/bootstrap.sh

dev: ## Start local dev environment
	./dev.sh

build: ## Run Bazel or Pants builds
	bazel build //...

test: ## Run all tests
	bazel test //...

lint: ## Run linters
	pants lint ::

fmt: ## Format code
	pants fmt ::

deploy: ## Deploy to cluster via Helm or Terraform
	bash ./infra/scripts/deploy.sh

clean: ## Clean artifacts
	rm -rf dist .cache build
