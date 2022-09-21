variable "AWS_REGION" {    
    default = "ap-south-1"
}

variable "RDS_Engine" {
    default = "mysql"
}

variable "RDS_Engine-Version" {
    default = "8.0.28"
}

variable "RDS_Instance-Class" {
    default = "db.t3.micro"
}

variable "rds-name" {
    default = "mydB"
}

variable "RDS_Username" {
    default = "user1"
}

variable "RDS_Password" {
    default = "password"
}

variable "RDS_Parameter_Group_Name" {
    default = "default.mysql8.0"
}


variable "CIDR-BLOCK" {    
    default = "172.16.0.0/16"
}


variable "CIDR-BLOCK-A" {    
    default = "172.16.1.0/24"
}

variable "CIDR-BLOCK-B" {    
    default = "172.16.2.0/24"
}

variable "CIDR-BLOCK-C" {    
    default = "172.16.3.0/24"
}

variable "AMI" {
    type = map

    default = {
        ap-south-1 = "ami-068257025f72f470d"
    }
}
