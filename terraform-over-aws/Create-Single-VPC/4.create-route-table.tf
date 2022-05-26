resource "aws_route_table" "my-vpc-public-rt" {
    vpc_id = aws_vpc.my-vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.my-vpc-igw.id
    }

    tags = {
        Name = "my-vpc-public-rt"
    }
}