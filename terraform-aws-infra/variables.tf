variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)
}

variable "availability_zones" {
  type = list(string)
}

variable "instance_ami" {
  type = string
}

variable "instance_type" {
  default = "t2.micro"
}

variable "public_key_path" {
  type = string
}

