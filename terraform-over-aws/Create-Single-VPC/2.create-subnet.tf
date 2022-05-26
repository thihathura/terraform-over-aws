resource "aws_subnet" "my-public-subnet" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.100.0/24"

  tags = {
    Name = "my-public-subnet"
  }
}
resource "aws_subnet" "my-private-subnet" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.200.0/24"

  tags = {
    Name = "my-private-subnet"
  }
}