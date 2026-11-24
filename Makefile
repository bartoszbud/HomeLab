.PHONY: fmt

fmt:
	@echo "Formatting code..."
	terraform -chdir=$(shell git rev-parse --show-toplevel) fmt -recursive