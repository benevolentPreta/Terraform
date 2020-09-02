variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "name" {}

variable "number" {
    type = number
    default = "1"
}

variable "region" {
    default = "us-east-1"
}

variable "environment" {
    default = "dev"
}
