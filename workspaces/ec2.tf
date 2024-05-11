resource "aws_instance" "expense" {

    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = ["sg-0fbcae1d2d339bcf4"]
    instance_type = lookup(var.instance_type, terraform.workspace)
    tags = {
        Name = terraform.workspace
    }

}