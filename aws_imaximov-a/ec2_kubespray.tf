# resource "aws_instance" "kubespray_training1" {
#   ami           = "${var.debian_ami_id}"
#   instance_type = "${var.debian_instance_type}"
#   key_name = "${var.key_name}"
#   subnet_id = "${var.subnet_id}"

#   vpc_security_group_ids = [aws_security_group.imaximov-a_SG_TF.id]
#   root_block_device {
#     volume_type = "gp2"
#     volume_size = "${var.ec2_root_volume_size}"
#   }

#   tags = {
#       Name = "kubespray_training1"
#   }
# }

# resource "aws_instance" "kubespray_training2" {
#   ami           = "${var.debian_ami_id}"
#   instance_type = "${var.debian_instance_type}"
#   key_name = "${var.key_name}"
#   subnet_id = "${var.subnet_id}"

#   vpc_security_group_ids = [aws_security_group.imaximov-a_SG_TF.id]
#   root_block_device {
#     volume_type = "gp2"
#     volume_size = "${var.ec2_root_volume_size}"
#   }

#   tags = {
#       Name = "kubespray_training2"
#   }
# }

# resource "aws_instance" "kubespray_training3" {
#   ami           = "${var.debian_ami_id}"
#   instance_type = "${var.debian_instance_type}"
#   key_name = "${var.key_name}"
#   subnet_id = "${var.subnet_id}"

#   vpc_security_group_ids = [aws_security_group.imaximov-a_SG_TF.id]
#   root_block_device {
#     volume_type = "gp2"
#     volume_size = "${var.ec2_root_volume_size}"
#   }

#   tags = {
#       Name = "kubespray_training3"
#   }

# }