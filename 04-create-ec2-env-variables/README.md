
# Environment variables
The below variable is not mandatory because the 'default' is used
```
variable "aws_region" {
  type = string
  description = ""
  default = "sa-east-1"
}
```

When the 'default' is removed the variable is turn mandatory
```
variable "aws_region" {
  type = string
  description = ""
}
```

Running the command 'template plan' we will be prompted to type the region
```
var.aws_region
  Enter a value:
```

## TF_VAR_xxx
Other way to pass value to variable is
```
TF_VAR_aws_region=sa-east-1 terraform plan
```

## -var
We have a thrid way to pass value to variable
```
terraform plan -var="aws_region=sa-east-1"
```

We can replace the variable value using
```
terraform plan -var="aws_region=sa-east-1" -var="instance_type=t3.medium"
```

## terraform.tfvars
The last way to define environment variables is using the file named terraform.tfvars.

**Step 1**
Create a file name terraform.tfvars and add the following variables
```
aws_region="sa-east-1"
instance_ami="ami-0cd88166878525f29"
instance_type="t3.micro"
```

**Step 2**
Remove the 'default' clause from variables in variables.tf file.

**Step 3**
Run the 'terraform plan' command.

