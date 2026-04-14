.PHONY: fmt

fmt:
	@echo "Formatting code..."
	terraform fmt -recursive terraform/