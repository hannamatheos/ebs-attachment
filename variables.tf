variable "aws_region" {
  default = "ap-southeast-1"
  description = "AWS region"
}

variable "ami_id" {
  default = "ami-0afc7fe9be84307e4"
  description = "AMI ID for EC2 instance"
}

variable "vpc_id" {
  description = "ID of the existing VPC"
  type = string
}

variable "subnet_id" {

  description = "ID of the existing subnet"
  type = string
  
}