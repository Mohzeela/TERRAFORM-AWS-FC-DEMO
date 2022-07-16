# # terraform {
# #   required_providers {
# #     aws = {
# #       source  = "hashicorp/aws"
# #       version = "~> 3.27"
# #     }
# #   }

# #   required_version = ">= 0.14.9"
# # }

# # provider "aws" {
# #   profile = "default"
# #   region  = "us-west-2"
# # }

# resource "aws_instance" "test" {
#   count = "${length(var.instance_name)}"
#   # name = "${element(var.instance_name, count.index )}"
#   ami           = "ami-052efd3df9dad4825"
#   instance_type = "t2.micro"
#   subnet_id              = "${element(var.subnet_id,   count.index)}" #var.subnet_id
#   vpc_security_group_ids = "${var.sg_id}"


#   tags = {
#     Name = "${element(var.instance_name, count.index )}"
#   }
# }