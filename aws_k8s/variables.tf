variable "aws_region" {
  type = string
  description = "AWS region"
  default = "us-east-1"
}

variable "debian_ami_id" {
  type = string
  description = "ID of the AMI to provision."
  default = "ami-07d02ee1eeb0c996c"
}

variable "windows_ami_id" {
  type = string
  description = "ID of the AMI to provision."
  default = "ami-0193dcf9aa4f5654e"
}

variable "debian_instance_type" {
  type = string
  description = "Type of Debian EC2 instance to provision."
  default = "t2.medium"
}

variable "windows_instance_type" {
  type = string
  description = "Type of Windows EC2 instance to provision."
  default = "t2.micro"
}

variable "key_name" {
  type = string
  description = "Name of the Key Pair"
  default = "imaximov-a"
}

variable "ec2_root_volume_size" {
  type    = string
  description = "The volume size for the root volume in GiB"
  default = "12"
}

variable "subnet_id" {
  type = string
  description = "Subnet ID to create EC2 instances"
  default = "subnet-0e831e74e6ff78423"
}