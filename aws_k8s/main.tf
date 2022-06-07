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

resource "aws_security_group" "imaximov-a_SG_TF" {
  name        = "imaximov-a_SG_TF"
  description = "Security group by imaximov-a"

  ingress {
    description      = "Allow etcd ports"
    from_port        = 2379
    to_port          = 2380
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "Allow k8s port"
    from_port        = 6443
    to_port          = 6443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "Alow SSH Acccess"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["212.58.120.65/32"]
  }

  ingress {
    description      = "Alow RDP Acccess"
    from_port        = 3389
    to_port          = 3389
    protocol         = "tcp"
    cidr_blocks      = ["212.58.120.77/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}

resource "aws_instance" "kubespray_training1" {
  ami           = "${var.debian_ami_id}"
  instance_type = "${var.debian_instance_type}"
  key_name = "${var.key_name}"
  subnet_id = "${var.subnet_id}"

  vpc_security_group_ids = [aws_security_group.imaximov-a_SG_TF.id]
  root_block_device {
    volume_type = "gp2"
    volume_size = "${var.ec2_root_volume_size}"
  }

  tags = {
      Name = "kubespray_training1"
  }
}

resource "aws_instance" "kubespray_training2" {
  ami           = "${var.debian_ami_id}"
  instance_type = "${var.debian_instance_type}"
  key_name = "${var.key_name}"
  subnet_id = "${var.subnet_id}"

  vpc_security_group_ids = [aws_security_group.imaximov-a_SG_TF.id]
  root_block_device {
    volume_type = "gp2"
    volume_size = "${var.ec2_root_volume_size}"
  }

  tags = {
      Name = "kubespray_training2"
  }
}

resource "aws_instance" "kubespray_training3" {
  ami           = "${var.debian_ami_id}"
  instance_type = "${var.debian_instance_type}"
  key_name = "${var.key_name}"
  subnet_id = "${var.subnet_id}"

  vpc_security_group_ids = [aws_security_group.imaximov-a_SG_TF.id]
  root_block_device {
    volume_type = "gp2"
    volume_size = "${var.ec2_root_volume_size}"
  }

  tags = {
      Name = "kubespray_training3"
  }

}

resource "aws_instance" "win_server_training" {
  ami           = "${var.windows_ami_id}"
  instance_type = "${var.windows_instance_type}"
  key_name = "${var.key_name}"
  subnet_id = "${var.subnet_id}"

  vpc_security_group_ids = [aws_security_group.imaximov-a_SG_TF.id]

  tags = {
      Name = "win_server_training"
  }

}