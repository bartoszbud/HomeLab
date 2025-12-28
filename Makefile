.PHONY: fmt dev-validate dev-plan

fmt:
	terraform fmt -recursive terraform/

dev-validate:
	cd terraform/envs/dev/ && \
	terraform init -backend=false && \ 
	terraform validate

dev-plan:
	cd terraform/envs/dev/ && \
	terraform init && \
	terraform plan -out=tfplan