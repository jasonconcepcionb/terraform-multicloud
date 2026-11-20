output "bucket_names" {
  description = "Nombre de cada bucket por capa."
  value       = { for layer, b in module.buckets : layer => b.id }
}

output "bucket_arns" {
  description = "ARN de cada bucket por capa."
  value       = { for layer, b in module.buckets : layer => b.arn }
}
