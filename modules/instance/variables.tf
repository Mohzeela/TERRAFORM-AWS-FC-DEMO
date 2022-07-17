variable "ami_id" {
  description = "Id of the AWS machine image to be used"
  type        = string
  default     = null

}

variable "instance" {
  description = "Instance of the AWS machine image to be used"
  type        = string
  default     = null

}

variable "instance_name" {
  type    = list(string)
  default = ["instance_1", "instance_2"]
}

variable "vpc_id" {
  description = "VPC id for web server EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "Subnet id for web server EC2 instance"
  type        = list(string)
  default     = []
}

variable "sg_id" {
  description = "Subnet id for web server EC2 instance"
  type        = list(string)
  default     = []
}