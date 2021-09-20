# Deploy a public web server using Terraform and AWS

To deploy resources, run the commands in the following order:
1. export TF_VAR_access_KEY="< your-access-key-here >"
2. export TF_VAR_secret_KEY="< your-secret-key-here >"
3. terraform apply -var-file variables.tfvars

To destroy the resources:
1. terraform destroy -var-file variables.tfvars