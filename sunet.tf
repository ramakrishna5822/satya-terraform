resource "aws_subnet" "public-subnet-1" {
    vpc_id = aws_vpc.dev.id
    cidr_block = "10.20.1.0/24"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true
    tags = {
        Name = "satya-subnet-1"
    }
  
}
resource "aws_subnet" "public-subnet-2" {
    vpc_id = aws_vpc.dev.id
    cidr_block = "10.20.2.0/24"
    availability_zone = "us-east-1b"
    map_public_ip_on_launch = true
    tags = {
        Name = "satya-subnet-2"
    }
  
}
resource "aws_subnet" "public-subnet-3" {
    vpc_id = aws_vpc.dev.id
    cidr_block = "10.30.1.0/24"
    availability_zone = "us-east-1c"
    map_public_ip_on_launch = true
    tags = {
        Name = "satya-subnet-3"
    }
  
}