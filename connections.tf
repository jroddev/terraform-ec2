provider "aws" {
  region = "ap-southeast-2"
}

terraform {
  backend "s3" {
    bucket = "<name>-server-tf"
    key    = "state/key"
    region = "ap-southeast-2"
  }
}
