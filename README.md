# First steps
- Change Production.tfvars to reflect the server name and dns zone you wish to use
- Setup backend state. AWS S3 example given in connections.tf

# Setup AWS Commandline
```
❯ aws configure
AWS Access Key ID [None]: XXXXXXXXXXXXXXXXX
AWS Secret Access Key [None]: /XXXXXXXXXXXXXXXXXXXXXXXXXXXX
Default region name [None]: ap-southeast-2
Default output format [None]:
```

# Terraform Create Infrastructure
```
terraform init
terraform plan -var-file=secret.tfvars
terraform apply -var-file=secret.tfvars -var-file=production.tfvars
```
# Terraform Delete Infrastructure
```
terraform destroy -var-file=secret.tfvars -var-file=production.tfvars
```

