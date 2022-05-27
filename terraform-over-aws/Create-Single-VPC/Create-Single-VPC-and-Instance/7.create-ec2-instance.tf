resource "aws_instance" "my_instance" {
  ami           = "ami-0aeb7c931a5a61206"
  instance_type = "t2.micro"
  key_name = "office-login"
  vpc_security_group_ids = [ aws_security_group.allow-ssh.id ]
  subnet_id = aws_subnet.my-public-subnet.id
  associate_public_ip_address = true

  tags = {
    Name = "my_instance"
  }
}