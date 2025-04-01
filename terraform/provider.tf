terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket       = "rionabucket"
    key          = "terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true 
    use_lockfile = true 
  }
}

provider "aws" {
  region = "us-west-2"
}

