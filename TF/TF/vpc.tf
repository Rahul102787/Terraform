resource "aws_vpc" "prod-vpc" {
    cidr_block = "${var.CIDR-BLOCK}"
    enable_dns_support = "true" #gives you an internal domain name
    enable_dns_hostnames = "true" #gives you an internal host name
    enable_classiclink = "false"
    instance_tenancy = "default"    
    tags = {
        Name = "prod-vpc"
    }
}

resource "aws_subnet" "prod-subnet-a-1" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "${var.CIDR-BLOCK-A}"
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "ap-south-1a"
    tags = {
        Name = "prod-subnet-a-1"
    }
}

resource "aws_subnet" "prod-subnet-b-1" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "${var.CIDR-BLOCK-B}"
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "ap-south-1b"
    tags = {
        Name = "prod-subnet-b-1"
    }
}

resource "aws_subnet" "prod-subnet-c-1" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "${var.CIDR-BLOCK-C}"
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "ap-south-1c"
    tags = {
        Name = "prod-subnet-c-1"
    }
}
