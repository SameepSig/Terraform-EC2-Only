output "ec2_arn" {
    description = "The ARN of the AWS instance"
    value       = aws_instance.sameep_terraform_ec2.arn
}

output "ec2_public_ip" {
    description = "The public IP of the EC2 instance"
    value       = aws_instance.sameep_terraform_ec2.public_ip
}

output "instance_id" {
  description = "The ID of the AWS instance"
  value       = aws_instance.sameep_terraform_ec2.id
}