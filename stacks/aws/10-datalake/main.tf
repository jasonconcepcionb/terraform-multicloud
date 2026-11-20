module "buckets" {
  source   = "../../../modules/s3-bucket"
  for_each = local.buckets

  bucket_name   = each.value
  force_destroy = var.environment == "d"

  tags = {
    Layer = each.key
  }
}
