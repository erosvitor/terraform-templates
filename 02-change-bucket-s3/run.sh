#!/bin/bash

terraform init
terraform plan -out="tfplan.out"
terraform apply "tfplan.out"
#terraform destroy
