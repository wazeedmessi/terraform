output "public_ip" {
  description = "print public ip"
  value       = aws_instance.messi.public_ip
}

output "private_ip" {
  description = "print private ip"
  value       = aws_instance.messi.private_ip
}

output "status" {
  description = "status of instance"
  value       = aws_instance.messi.instance_state

}

output "vpc_data" {
  value = data.aws_subnets.public_subnets
}
