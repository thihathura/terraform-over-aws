//VPC-A NSG
resource "aws_security_group" "allow-ssh-vpc-a" {
  name        = "allow-ssh-sg-vpc-a"
  description = "Allow SSH inbound connections"
  vpc_id = aws_vpc.vpc-a.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  tags = {
    Name = "vpc-a-allow-ssh"
  }
}
//VPC-B NSG
resource "aws_security_group" "allow-ssh-vpc-b" {
  name        = "allow-ssh-sg-vpc-b"
  description = "Allow SSH inbound connections"
  vpc_id = aws_vpc.vpc-b.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  tags = {
    Name = "vpc-b-allow-ssh"
  }
}

//VPC-C NSG
resource "aws_security_group" "allow-ssh-vpc-c" {
  name        = "allow-ssh-sg-vpc-c"
  description = "Allow SSH inbound connections"
  vpc_id = aws_vpc.vpc-c.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  tags = {
    Name = "vpc-c-allow-ssh"
  }
}
