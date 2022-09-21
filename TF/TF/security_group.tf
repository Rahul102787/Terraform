resource "aws_security_group" "Dev-EC2" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    name = "Dev-EC2"
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "Dev-EC2"
    }
}



resource "aws_security_group" "Global-EC2" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    name = "Global-EC2"
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "Global-EC2"
    }
}
