PROJECT_ID = devops-storybooks-377209
REGION = europe-west3

run-local:
	docker compose up -d

stop-local:
	docker compose down

create-tf-backend-bucket:
	gsutil mb -l $(REGION) -p $(PROJECT_ID) gs://$(PROJECT_ID)-terraform

ENV=staging

terraform-create-workspace:
	cd terraform && \
	  terraform workspace new $(ENV)

terraform-init:
	cd terraform && \
	  terraform workspace select $(ENV) && \
	  terraform init

terraform-plan:
	cd terraform && \
	  terraform workspace select $(ENV) && \
	  terraform plan