# Configure the AWS Provider
provider "aws" {
  region = var.region
}

variable region {
    default = "us-east-1"
    }

resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
  public_key = file("~/.ssh/id_rsa.pub")
  }

  variable key_name {
    default = "my_key"
  }
