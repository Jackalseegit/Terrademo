terraform {
  backend "s3" {
    bucket         = "helpelp"
    key            = "terraform/prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}