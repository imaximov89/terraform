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
    cidr_blocks      = ["212.58.120.68/32"]
  }

  ingress {
    description      = "Alow RDP Acccess"
    from_port        = 3389
    to_port          = 3389
    protocol         = "tcp"
    cidr_blocks      = ["212.58.120.68/32"]
  }

  ingress {
    description      = "Alow HTTP Acccess"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}