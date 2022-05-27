//Create vm-a on vpc-a -> Public Subnet
resource "aws_instance" "vm-a" {
  ami           = "ami-0aeb7c931a5a61206"
  instance_type = "t2.micro"
  key_name = "office-login"
  vpc_security_group_ids = [ aws_security_group.allow-ssh-vpc-a.id ]
  subnet_id = aws_subnet.vpc-a-public-01.id
  associate_public_ip_address = true

  tags = {
    Name = "vm-a"
  }
}

//Create vm-b on vpc-b -> Public Subnet
resource "aws_instance" "vm-b" {
  ami           = "ami-0aeb7c931a5a61206"
  instance_type = "t2.micro"
  key_name = "office-login"
  vpc_security_group_ids = [ aws_security_group.allow-ssh-vpc-b.id ]
  subnet_id = aws_subnet.vpc-b-public-01.id
  associate_public_ip_address = true

  tags = {
    Name = "vm-b"
  }
}

//Create vm-c on vpc-c -> Public Subnet
resource "aws_instance" "vm-c" {
  ami           = "ami-0aeb7c931a5a61206"
  instance_type = "t2.micro"
  key_name = "office-login"
  vpc_security_group_ids = [ aws_security_group.allow-ssh-vpc-c.id ]
  subnet_id = aws_subnet.vpc-c-public-01.id
  associate_public_ip_address = true

  tags = {
    Name = "vm-c"
  }
}