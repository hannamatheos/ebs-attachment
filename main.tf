locals {
  name_prefix = "hanna"
}

#Attach volume to EC2 instance
resource "aws_volume_attachment" "attach" {
  device_name = "/dev/sdh"
  volume_id = aws_ebs_volume.EBS.id
  instance_id = aws_instance.EC2_instance.id
  force_detach = true
}