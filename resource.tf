#Create security group for EC2
resource "aws_security_group" "main" {
  name = "${local.name_prefix}-ec2-sg"
  description = "Allow SSH"
  vpc_id = var.vpc_id

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${local.name_prefix}-ec2-sg"
  }
}

#Create EC2 instance
resource "aws_instance" "EC2_instance" {

  ami = var.ami_id
  instance_type = "t2.micro"
  subnet_id = var.subnet_id
  vpc_security_group_ids = [aws_security_group.main.id]

  tags = {
    Name = "${local.name_prefix}-ec2"
  }
  
}

resource "aws_ebs_volume" "EBS" {
  availability_zone = data.aws_subnet.selected.availability_zone
  size =1 

  tags = {
    Name = "${local.name_prefix}-volume"
  }
}