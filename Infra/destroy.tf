cd infra && terraform destroy -var-file=envs/dev.tfvars   # or run from a pipeline
az group delete -n rg-tfstate --yes