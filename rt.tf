resource "aws_route_table" "rt" {
    vpc_id = aws_vpc.dev.id
    route {
        gateway_id = aws_internet_gateway.igw.id
        cidr_block = "0.0.0.0/0"
    }
    tags = {
        Name ="satya-rt"
    }
  
}

resource "aws_route_table_association" "p1associate" {
    route_table_id = aws_route_table.rt.id
    subnet_id = aws_subnet.public-subnet-1.id
  
}

resource "aws_route_table_association" "p2associate" {
    route_table_id = aws_route_table.rt.id
    subnet_id = aws_subnet.public-subnet-2.id
  
}

resource "aws_route_table_association" "p3associate" {
    route_table_id = aws_route_table.rt.id
    subnet_id = aws_subnet.public-subnet-3.id
  
}