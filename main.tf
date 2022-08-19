provider "aws" {
	region = "us-east-1"
}

/* module "my_instance_module" {
        source = "./my_modules/ec2"
        ami = "ami-005c1fe20114f7187"
        instance_type = "t2.micro"
        instance_name = "test"
}     */

module "vpc" {
        source = "./my_modules/vpc"
       
}    