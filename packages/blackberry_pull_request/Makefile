init:
	export AWS_PROFILE=$(AWS_PROFILE) \
	&& terraform init -backend-config=environments/$(ENV)/backend.tfvars

plan:
	export AWS_PROFILE=$(AWS_PROFILE) \
	&& terraform plan --var-file=environments/$(ENV)/variables.tfvars

apply:
	export AWS_PROFILE=$(AWS_PROFILE) \
	&& terraform apply --var-file=environments/$(ENV)/variables.tfvars

destroy:
	export AWS_PROFILE=$(AWS_PROFILE) \
	&& terraform destroy --var-file=environments/$(ENV)/variables.tfvars
	
# INFRA
init-dev:
	AWS_PROFILE=${NON_PROD} ENV=dev make init

plan-dev:
	AWS_PROFILE=${NON_PROD} ENV=dev make plan

deploy-dev:
	AWS_PROFILE=${NON_PROD} ENV=dev make apply

destroy-dev:
	AWS_PROFILE=${NON_PROD} ENV=dev make destroy
	
init-prd:
	AWS_PROFILE=${PROD} ENV=prd make init

plan-prd:
	AWS_PROFILE=${PROD} ENV=prd make plan

deploy-prd:
	AWS_PROFILE=${PROD} ENV=prd make apply

destroy-prd:
	AWS_PROFILE=${PROD} ENV=prd make destroy 