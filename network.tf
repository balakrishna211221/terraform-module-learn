module "vpc" {
  source = "./my_modules/vpc"
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "MyVPC"
  }
}

module "subnet" {
  source = "./my_modules/subnet"
  vpc_id = module.vpc.vpc_id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "MySubnet"
  }
}
