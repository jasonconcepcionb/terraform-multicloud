output "id" {
  description = "Nombre (ID) del bucket."
  value       = aws_s3_bucket.this.id
}

output "arn" {
  description = "ARN del bucket, para usar en políticas IAM."
  value       = aws_s3_bucket.this.arn
}

output "regional_domain_name" {
  description = "Dominio regional del bucket."
  value       = aws_s3_bucket.this.bucket_regional_domain_name
}
