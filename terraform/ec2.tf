resource "aws_instance" "gitlab_ec2_instance" {
  ami             = "ami-09e1162c87f73958b"
  instance_type   = "t3.micro"
  security_groups = [aws_security_group.gitlab_security_group.name]
  tags = {
    Name = "gitlab_instance"
  }
}