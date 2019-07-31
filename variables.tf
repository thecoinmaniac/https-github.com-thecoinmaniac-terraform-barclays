variable "vpc_region" {
    default = "us-east-2"  
}

variable "vpc_name" {
    default = "test"
}

variable "vpc_cidr_block" {
    default = "10.0.0.0/16"
}

# Public Subnet 00 Config
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

# Public Subnet 01 Config
variable "subnet_public_01" {
  description = "Public subnet for VPC"
  default     = "peru_01"
}

variable "subnet_public_cidr_01" {
  description = "CIDR for public subnet_01"
  default     = "10.0.2.0/24"
}

variable "subnet_public_az_01" {
  description = "Availability zone for public subnet_01"
  default     = "us-east-2b"
}

# Public Subnet 02 Config
variable "subnet_public_02" {
  description = "No.3 Public subnet for VPC"
  default     = "peru_02"
}

variable "subnet_public_cidr_02" {
  description = "CIDR for public subnet_02"
  default     = "10.0.3.0/24"
}

variable "subnet_public_az_02" {
  description = "Availability zone for public subnet_02"
  default     = "us-east-2c"
}