#ec2 instance variables
variable "instance_names" {
  type = map
#   default = {
#     db-dev = "t2.small"
#     backend-dev = "t2.micro"
#     frontend-dev = "t2.micro"
#   }
}

variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL- 9 AMI id"

}

variable "common_tags" {
    default = {
        Project_Name = "Expense"
        Terraform = "true"
    }
}

variable "environment" {
    # default = "DEV"
}



#route53 variables

variable "zone_id" {
    default = "Z09208763BSEMKKGPRWGK"
}

variable "domain_name" {
    default = "avyan.site"
}