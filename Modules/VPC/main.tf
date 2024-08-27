resource "aws_vpc" "school" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  #aws_ec2_availability_zone= var.azs-list

  tags = {
    Name = "schoolVPC"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.school.id
  cidr_block = var.public_subnet_cidr

  tags = {
    Name = "publicsubnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.school.id
  cidr_block = var.private_subnet_cidr

  tags = {
    Name = "privatesubnet"
  }
}

#resource "aws_ec2_availability_zone" "az-list" {
#   group_name    = "us-west-2-lax-1"
#   opt_in_status = "opted-in"
#}