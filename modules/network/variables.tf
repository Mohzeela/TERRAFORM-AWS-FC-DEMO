variable "region" {
  description = "AWS Deployment region.."
  default     = ""
}

variable "vpc_cidr" {
  description = "The IP address range of the VPC in CIDR notation. A prefix of /16 is recommended. Do not use a prefix higher than /27."
  default     = ""
  type        = string
}


variable "environment" {
  description = "Environment where resources would be deployed into"
  type        = string
  default     = ""

}

variable "private_subnets_cidr" {
  description = "The IP address range of the VPC's secondary address range in CIDR notation. A prefix of /16 is recommended. Do not use a prefix higher than /27."
  type        = list(string)
  default     = []
}

variable "public_subnets_cidr" {
  description = "The IP address range of the VPC's secondary address range in CIDR notation. A prefix of /16 is recommended. Do not use a prefix higher than /27."
  type        = list(string)
  default     = []
}

variable "availability_zones" {

  description = "Availability zone for the resources"
  type        = list(string)
  default     = []

}


/*==== For Loadbalancer ======*/

variable "alb_name" {
  description = "The resource name and Name tag of the load balancer."
  type        = string
  default     = null
}

variable "security_groups" {
  description = "The security groups to attach to the load balancer. e.g. [\"sg-edcd9784\",\"sg-edcd9785\"]"
  type        = list(string)
  default     = []
}

# variable "security_group" {
#   description = "The security groups to attach to the load balancer."
#   type        = string
#   default     = null
# }

variable "create_lb" {
  description = "Controls if the Load Balancer should be created"
  type        = bool
  default     = true
}

variable "idle_timeout" {
  description = "The time in seconds that the connection is allowed to be idle."
  type        = number
  default     = 60
}

variable "internal_alb" {
  description = "Boolean determining if the load balancer is internal or externally facing."
  type        = bool
  default     = false
}

variable "load_balancer_type" {
  description = "The type of load balancer to create. Possible values are application or network."
  type        = string
  default     = "application"
}

variable "vpc_id" {
  description = "VPC id where the load balancer and other resources will be deployed."
  type        = string
  default     = null
}

variable "s3_bucket" {
  description = "S3 bucket for alb logs"
  type        = string
  default     = null
}

variable "target_group_name" {
  description = "name of target group for alb"
  type        = string
  default     = null
}

variable "svc_port" {
  description = ""
  type        = number
  default     = 80
}

variable "target_group_sticky" {
  description = ""
  type        = string
  default     = null
}

variable "target_group_path" {
  description = ""
  type        = string
  default     = null
}

variable "target_group_port" {
  description = ""
  type        = number
  default     = 80
}

variable "alb_listener_port" {
  description = ""
  type        = number
  default     = 80
}

variable "alb_listener_protocol" {
  description = ""
  type        = string
  default     = null
}

variable "priority" {
  description = ""
  type        = string
  default     = null
}

variable "alb_path" {
  description = ""
  type        = list(string)
  default     = []
}

variable "test" {
  description = "Ec2 instance for target group"
  type        = string
  default     = null
}

variable "instance_id" {
  description = "ID of the instance created"
  type        = string
  default     = null
}

