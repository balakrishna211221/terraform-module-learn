module "ec2_ansible_master" {
  source            = "./my_modules/ec2"
  ami_id            = var.ami_id  # example AMI
  instance_type     = var.instance_type
  subnet_id         = module.subnet.subnet_id
  security_group_ids = [module.security_group.security_group_id]
  key_name          = "terraform"              # optional
  tags = {
    Name        = "ansible_master"
    Environment = "Dev"
  }
    count = var.masterCount

}


module "ec2_ansible_slave" {
  source            = "./my_modules/ec2"
  ami_id            = var.ami_id  # example AMI
  instance_type     = var.instance_type
  subnet_id         = module.subnet.subnet_id
  security_group_ids = [module.security_group.security_group_id]
  key_name          = "terraform"              # optional
  tags = {
    Name        = "ansible_slave"
    Environment = "Dev"
  }
  count = var.slaveCount
}
