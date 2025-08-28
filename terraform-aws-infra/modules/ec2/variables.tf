variable "subnet_id" {
  type = string
}

variable "instance_ami" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t3.small"
}

variable "public_key_path" {
  type = string
}

variable "vpc_id" {
  type = string
}

