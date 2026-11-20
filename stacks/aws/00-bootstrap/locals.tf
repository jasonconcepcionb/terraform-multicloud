locals {
  region_codes = {
    "us-east-1" = "use1"
    "us-east-2" = "use2"
  }

  region_code = local.region_codes[var.region]

  # s3 + región + proyecto + tfstate + ambiente + 01 → s3use1labtfstated01
  state_bucket_name = "s3${local.region_code}${var.project}tfstate${var.environment}01"
}