resource "aws_instance" "dev" {
    ami = "${lookup(var.AMI, var.AWS_REGION)}"
    instance_type = "t3a.micro"
    # VPC
    subnet_id = "${aws_subnet.prod-subnet-a-1.id}"
    # Security Group
    vpc_security_group_ids = ["${aws_security_group.Dev-EC2.id}"]
    # the Public SSH key
    key_name = "${aws_key_pair.generated_key.key_name}"
    tags = {
        Name = "Dev"
    }

}

resource "aws_instance" "global" {
    ami = "${lookup(var.AMI, var.AWS_REGION)}"
    instance_type = "t3a.micro"
    # VPC
    subnet_id = "${aws_subnet.prod-subnet-b-1.id}"
    # Security Group
    vpc_security_group_ids = ["${aws_security_group.Global-EC2.id}"]
    # the Public SSH key
    key_name = "${aws_key_pair.generated_key.key_name}"
    tags = {
        Name = "Global"
    }
}
