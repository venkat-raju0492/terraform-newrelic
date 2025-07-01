# terraform-newrelic
terraform-newrelic


Terraform script to create dashboard in newrelic 

Prerequisites first run the plugins.sh shell sciript before running the terraform commands

sh +x plugins.sh

then run the below terraform commands to provision the newrelic dashboard

terraform init -backend-config="bucket=<s3 bucket name>" -backend-config="key=<s3 key to state file>" -backend-config="region=<AWS region of s3 bucket>" -backend=true -force-copy -get=true -input=false -upgrade -no-color

terraform plan  -var-file="dev.tfvars" -out ${tf_plan_file} -no-color'

terraform apply --input=false ${tf_plan_file} -no-color