# Terraform Settings Block
terraform {
  required_version = "~> 1.14.7" # which means any version equal & above 1.14.7 and < 1.15
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.37.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 3.0.1"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "~> 3.1.1"
    }
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "421613839447-terraform-on-aws-eks"
    key    = "dev/eks-cluster/terraform.tfstate"
    region = "us-east-1"

    # For State Locking
    # dynamodb_table = "dev-ekscluster"
    use_lockfile   = true # Use S3 native locking
  }
}

provider "kubernetes" {
  host                   = output.cluster_endpoint
  cluster_ca_certificate = base64decode(output.cluster_certificate_authority_data)
}

# Terraform Provider Block
provider "aws" {
  region = var.aws_region

}
