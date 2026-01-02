resource "aws_vpc" "dev" {
    cidr_block = "10.20.0.0/16"
    enable_dns_hostnames = true
 tags = {
        Name = "satya-vpc"
    }

  
}

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.dev.id
    tags = {
        Name = "satya-igw"
    }
}