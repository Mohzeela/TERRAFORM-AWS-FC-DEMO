variable "region" {
  description = "AWS Deployment region.."
  default = ""
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
  type        =  list(string)
  default     = []
}

variable "public_subnets_cidr" {
  description = "The IP address range of the VPC's secondary address range in CIDR notation. A prefix of /16 is recommended. Do not use a prefix higher than /27."
  type        =  list(string)
  default     =  []
}

variable "availability_zones" {
  
  description = "Availability zone for the resources"
  type        =  list(string)
  default     =  []

}
