terraform {
  backend "s3" {
    bucket = "terraformstate211221"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
