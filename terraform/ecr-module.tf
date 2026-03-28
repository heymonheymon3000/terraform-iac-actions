module "ecr" {
  source  = "terraform-aws-modules/ecr/aws"
  version = "3.2.0"

  repository_name    = var.ecr_repo
  registry_scan_type = var.ecr_registry_scan_type
  repository_type    = var.ecr_repository_type

  create_lifecycle_policy = var.ecr_create_lifecycle_policy
  repository_image_tag_mutability = var.ecr_repository_image_tag_mutability

  tags = {
    Terraform = "true"
  }
}
