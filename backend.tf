terraform {
  backend "s3" {
    bucket  = "terraform-backend-sbr"
    key     = "project1-asg/terraform.tfstate"
    region  = "us-east-1"
    profile = "default"
  }
}
