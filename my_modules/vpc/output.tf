output "vpc" {
  value = aws_vpc.vpc.cidr_block
  description = "The public IP address of the main instance."
}