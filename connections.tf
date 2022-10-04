provider "aws" {
  region = "ap-southeast-2"
}

terraform {
  backend "s3" {
    bucket = "wireguard-server-tf"
    key    = "state/key"
    region = "ap-southeast-2"
  }
}
