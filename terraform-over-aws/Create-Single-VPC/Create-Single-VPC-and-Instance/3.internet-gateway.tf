resource "aws_internet_gateway" "my-vpc-igw" {
  vpc_id = aws_vpc.my-vpc.id

  tags = {
    Name = "my-vpc-igw"
  }
}