terraform {
  required_version = ">= 0.11.0"
}

provider "aws" {
  region = "${var.aws_region}"
  profile = "imaximov-a"
  default_tags {
    tags = {     
      Owner = "imaximov-a"
      CreatedBy = "Strong_TF"   
    }  
  }
}