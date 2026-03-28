output "ecr_repo_url" {
  description = "ECR Repo URI"
  value       = module.ecr.repository_url
}

output "ecr_repo_name" {
  description = "ECR Repo name"
  value       = module.ecr.repository_name
}
