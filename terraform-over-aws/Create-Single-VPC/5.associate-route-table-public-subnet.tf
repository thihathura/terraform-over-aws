resource "aws_route_table_association" "my-vpc-public-rt" {
    subnet_id = aws_subnet.my-public-subnet.id
    route_table_id = aws_route_table.my-vpc-public-rt.id
}