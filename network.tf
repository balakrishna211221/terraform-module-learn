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

resource "aws_internet_gateway" "igw" {
  vpc_id = module.vpc.vpc_id
  tags = {
    Name = "MyInternetGateway"
  }
}

resource "aws_route_table" "route_table" {
  vpc_id = module.vpc.vpc_id
  tags = {
    Name = "MyRouteTable"
  }
}

resource "aws_route" "default_route" {
  route_table_id         = aws_route_table.route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}

resource "aws_route_table_association" "subnet_association" {
  subnet_id      = module.subnet.subnet_id
  route_table_id = aws_route_table.route_table.id
}
