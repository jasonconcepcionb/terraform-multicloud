locals {
  region_codes = {
    "us-east-1" = "use1"
    "us-east-2" = "use2"
  }

  region_code = local.region_codes[var.region]

  # s3 + región + proyecto → s3use1lab
  s3_prefix = "s3${local.region_code}${var.project}"

  # Capas del data lake
  layers = ["landing", "bronze", "silver", "gold"]

  # Nombre de cada bucket: s3use1lab + capa + ambiente + 01
  buckets = {
    for layer in local.layers :
    layer => "${local.s3_prefix}${layer}${var.environment}01"
  }
}