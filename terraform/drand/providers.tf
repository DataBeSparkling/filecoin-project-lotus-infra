provider "aws" {
  region  = "us-east-1"
  profile = "filecoin"
}

terraform {
  backend "s3" {
    bucket         = "filecoin-terraform-state"
    key            = "drand-testnet-us-east-1.tfstate"
    dynamodb_table = "filecoin-terraform-state"
    region         = "us-east-1"
    profile        = "filecoin"
  }
}