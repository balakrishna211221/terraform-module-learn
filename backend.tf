terraform {
  backend "s3" {
    bucket = "terraformstatedev211221"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
