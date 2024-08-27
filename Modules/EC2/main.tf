resource "aws_instance" "terraterra" {
  ami           =data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  #subnet_id     = aws_subnet.public_subnet.id

  tags = {
    Name = var.instance_name
  }
}