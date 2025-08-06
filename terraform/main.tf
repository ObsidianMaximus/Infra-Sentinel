resource "aws_instance" "infra_sent" {
  ami           = var.ami_number # Ubuntu 24.04
  instance_type = "t2.medium"
  security_groups = [aws_security_group.allow_http_ssh_infra.name]
  iam_instance_profile = aws_iam_instance_profile.ssm_instance_profile.name
  user_data = "${file("userdata.sh")}"

  tags = {
    Name = "Infra-Sentinel-SSM-Managed-Instance"
  }

}

output "ec2_instance_id" {
  value = aws_instance.infra_sent.id
}

output "ec2_public_ip" {
  value = aws_instance.infra_sent.public_ip
}