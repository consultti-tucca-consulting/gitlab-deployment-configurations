resource "aws_vpc" "gitlab_vpc" {
  cidr_block = "10.0.0.0/16"

  enable_dns_hostnames = true 
  enable_dns_support   = true

  tags = {
    Name = "gitlab_vpc"
  }
}

resource "aws_subnet" "gitlab_subnet" {
  vpc_id     = aws_vpc.gitlab_vpc.id
  cidr_block = "10.0.10.0/24"

  tags = {
    Name = "gitlab_subnet"
  }
}

resource "aws_internet_gateway" "gitlab_internet_gateway" {
  vpc_id = aws_vpc.gitlab_vpc.id

  tags = {
    Name = "gitlab_internet_gateway"
  }
}