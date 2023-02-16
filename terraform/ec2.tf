resource "aws_instance" "gitlab_ec2_instance" {
  ami             = "ami-09e1162c87f73958b"
  instance_type   = "t3.micro"
  security_groups = [aws_security_group.gitlab_security_group.name]

  key_name = aws_key_pair.gitlab_ec2_key.key_name

  tags = {
    Name = "gitlab_instance"
  }
}

resource "tls_private_key" "gitlab_ec2_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key" "gitlab_ec2_key" {
  private_key_pem = tls_private_key.gitlab_ec2_key.private_key_pem
}

resource "aws_key_pair" "gitlab_ec2_key" {
  key_name   = "gitlab_ec2_key"
  public_key = data.tls_public_key.gitlab_ec2_key.public_key_openssh
}

output "gitlab_ec2_key" {
  value = tls_private_key.gitlab_ec2_key.private_key_pem
  sensitive = true
}