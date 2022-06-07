output "imaximov-a_SG_TF" {
  value = "${aws_security_group.imaximov-a_SG_TF.id}"
}

output "kubespray1_public_dns" {
  value = "${aws_instance.kubespray_training1.public_dns}"
}

output "kubespray1_private_ip" {
  value = "${aws_instance.kubespray_training1.private_ip}"
}

output "kubespray2_public_dns" {
  value = "${aws_instance.kubespray_training2.public_dns}"
}

output "kubespray2_private_ip" {
  value = "${aws_instance.kubespray_training2.private_ip}"
}

output "kubespray3_public_dns" {
  value = "${aws_instance.kubespray_training3.public_dns}"
}

output "kubespray3_private_ip" {
  value = "${aws_instance.kubespray_training3.private_ip}"
}

output "win_server_private_ip" {
  value = "${aws_instance.win_server_training.private_ip}"
}

output "win_server_public_dns" {
  value = "${aws_instance.win_server_training.public_dns}"
}

