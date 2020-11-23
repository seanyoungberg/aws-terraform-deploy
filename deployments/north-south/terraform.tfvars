region = "us-east-1"

prefix_name_tag = "my-prefix-" // Used for resource name Tags. Leave as empty string if not desired

global_tags = {
  Environment = "us-east-1"
  Group       = "SecOps"
  Managed_By  = "Terraform"
  Description = "Demo of all resource types and optional parameters supported by this module"
}

## Current example set to work from remote state,
//TODO: Generalize inputs

subnet_ids         = ["subnet-012345", "subnet-012345"]
sg_ids             = ["sg-012345"]
vpc_id               = "vpc-012345"

lambda_s3_bucket     = "new-s3-bucket-name"
lambda_file_location = "lambda-package"
lambda_file_name     = "crosszone_ha_instance_id.zip"