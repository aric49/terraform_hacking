# Terraform Hacking

Just a repo used for learning Terraform.


## Usage:

```
#Dev
terraform plan -var-file="variables/dev.tfvars"
terraform apply -var-file="variables/dev.tfvars"

#Staging
terraform plan -var-file="variables/staging.tfvars"
terraform apply -var-file="variables/staging.tfvars"
```

**NOTE:** Export AWS credentials as environment variables:

```
#!/bin/bash
export AWS_ACCESS_KEY_ID=XXXXXXXXXXXXX
export AWS_SECRET_ACCESS_KEY=XXXXXXXXXXXXXXXXXXXXXXXXX
export AWS_DEFAULT_REGION=secret-region-1
```
