variable "vpc_cidr" {
    sensitive = false
    type = string
     default = ""
  
}

variable "public_subnet_cidr" {
    type = string
    default = ""
  
}

variable "private_subnet_cidr" {
    type = string
    default = ""
  
}

variable "azs-list" {
    type = list(string)
default = []  
}