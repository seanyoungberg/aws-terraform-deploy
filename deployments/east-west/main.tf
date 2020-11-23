provider "aws" {
  region  = var.region
  #profile = "default"
}


module "vmseries_crosszone_failover" {
  source               = "../../"
  region               = var.region
  tags                 = var.global_tags
  prefix_name_tag      = var.prefix_name_tag
  subnet_ids         = var.subnet_ids
  sg_ids             = var.sg_ids
  vpc_id               = var.vpc_id
  lambda_s3_bucket     = var.lambda_s3_bucket
  lambda_file_location = var.lambda_file_location
  lambda_file_name     = var.lambda_file_name
}
