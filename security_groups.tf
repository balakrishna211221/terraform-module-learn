module "security_group" {
  source = "./my_modules/security_group"

  vpc_id      = module.vpc.vpc_id
  name        = "my_sg"
  description = "Allow SSH and HTTP"

  ingress_rules = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}
