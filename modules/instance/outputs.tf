output "instance_id" {
  value = aws_instance.test.*.id
}

output "ec2_public_ip" {
  value = aws_instance.test.*.public_ip
}

output "ec2_tags" {
  value = aws_instance.test.*.tags_all
}