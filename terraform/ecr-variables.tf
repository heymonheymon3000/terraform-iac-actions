# ECR Input Variables

# Name of the ECR Repo
variable "ecr_repo" {
  description = "The name of the repository"
  type        = string
  default     = "gitops-webapp"
}

# Scan type (ENHANCED or BASIC)
variable "ecr_registry_scan_type" {
  description = "Scanning type to set for the registry"
  type        = string
  default     = "BASIC"
}

# Repository type (public or private)
variable "ecr_repository_type" {
  description = "The type of repository to create"
  type        = string
  default     = "private"
}

# Create Lifecycle policy (true or false)
variable "ecr_create_lifecycle_policy" {
  description = "Determines whether a lifecycle policy will be created"
  type        = boolean
  default     = false
}

# The tag mutability setting for the repository (MUTABLE, MUTABLE_WITH_EXCLUSION, IMMUTABLE, IMMUTABLE_WITH_EXCLUSION)
variable "ecr_repository_image_tag_mutability" {
  description = "The tag mutability setting for the repository"
  type        = string
  default     = "MUTABLE"
}
