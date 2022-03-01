
# Multiple environments
Add a new variable in 'variables.tf' file
```
variable "environment" {
  type = string
  description = ""
}
```

Create a file named 'dev.auto.tfvars' 
```
environment="dev"
```

Create a file named 'prod.tfvars'
```
environment = "prod"
instance_type="t3.large"
```

Run the following command
```
terraform plan -var-file="prod.tfvars"
```

## Variable Definition Precedence
Terraform loads variables in the following order, with later sources taking precedence over earlier ones:
* Environment variables
* The terraform.tfvars file, if present.
* The terraform.tfvars.json file, if present.
* Any *.auto.tfvars or *.auto.tfvars.json files, processed in lexical order of their filenames.
* Any -var and -var-file options on the command line, in the order they are provided. (This includes variables set by a Terraform Cloud workspace.)

Source: https://www.terraform.io/language/values/variables

## Use
```
terraform apply -var-file="prod.tfvars"
terraform destroy -var-file="prod.tfvars"
```

