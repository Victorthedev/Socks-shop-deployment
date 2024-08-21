variable "region" {
  type = string
  default = "us-east-1"
}

variable "eks_cluster_name" {
  type = string
  default = "socks-shop-cluster"
}

variable "vpc_cidr_block" {
  type = string
  default = "10.0.0.0/16"
}

variable "db_instance_class" {
  type = string
  default = "db.t3.micro"
}

variable "db_allocated_storage" {
  type = number
  default = 20
}

variable "db_username" {
  type = string
  default = "socks_shop"
}

variable "db_password" {
  type = string
  default = "changeme"
}

variable "ebs_volume_size" {
  type = number
  default = 20
}