#use existing VPC
data "aws_vpc" "selected" {

  id = var.vpc_id # to be replaced with your VPC name
 
}

#use existing public subnet
data "aws_subnet" "selected" {
  id = var.subnet_id

}