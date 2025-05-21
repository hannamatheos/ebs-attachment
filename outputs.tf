output "EC2" {

  value = aws_instance.EC2_instance

}

output "ebs_volume_id" {

  value = aws_ebs_volume.EBS.id
}

output "volume_attachment_device" {
  
  value = aws_volume_attachment.attach.device_name
}