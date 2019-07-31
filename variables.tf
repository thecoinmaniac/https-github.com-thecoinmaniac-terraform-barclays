variable "vpc_region" {
    default = "us-east-2"  
}

variable "vpc_name" {
    default = "test"
}

variable "vpc_cidr_block" {
    default = "10.0.0.0/16"
}

# Public Subnet Config
variable "subnet_public" {
  description = "Public subnet for VPC"
  default     = "peru"
}

variable "subnet_public_cidr" {
  description = "CIDR for public subnet"
  default     = "10.0.1.0/24"
}

variable "subnet_public_az" {
  description = "Availability zone for public subnet"
  default     = "us-east-2a"
}