// -----------------------EC2 Instance----------------------------

resource "aws_instance" "sameep_terraform_ec2" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  vpc_security_group_ids = [var.security_group_id] # Attach the security group
  associate_public_ip_address = true
  key_name = var.key_name
  iam_instance_profile = var.iam_instance_profile
  metadata_options {
    http_tokens = "required"
    instance_metadata_tags = "enabled"
  }

  tags = {
    Name = "sameep-ec2-server"
    silo = "intern2"
    owner = "sameep.sigdel"
    terraform = "true"
    environment = "dev"
  }
}