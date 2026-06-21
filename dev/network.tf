module "application_vpc" {
        source = "../modules/networking/vpc"
        name = var.myterraform_vpc
        environment = var.environment
        vpc_cidr = var.vpc_cidr
        private_subnet_cidr = var.private_subnet_cidr
}