
variable "region" {
  description = "Default Region AWS Region"
  default = ""
}

variable "vpc_name" {
  description = "VPN Name"
  default = ""
}

# variable "private_subnets" {
#   default = ["10.0.1.0/24"]
# }

variable "public_subnets" {
  description = "Default CIDR for public subnet"
  default = ["10.0.101.0/24"]
}

variable "public_subnet_tags" {
  default = {}
}

variable "tags" {}