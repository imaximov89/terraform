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
resource "aws_instance" "docker_training" {
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
      Name = "docker_training"
  }
}

resource "aws_instance" "debian_training" {
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
      Name = "debian_training"
  }
}