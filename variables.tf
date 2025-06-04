variable "aws_access_key" {
  type      = string
  sensitive = true
}

variable "aws_secret_key" {
  type      = string
  sensitive = true
}

variable "ami_id" {
  description = "AMI ID to use for the instance"
  type        = string
  default = "ami-0953476d60561c955"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

# variable "subnet_id" {
#   description = "Subnet ID to launch the instance in"
#   type        = string
# }

variable "security_group_ids" {
  description = "List of security group IDs to assign to the instance"
  type        = list(string)
  default     = []
}

variable "key_name" {
  description = "The key pair name for SSH access"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags to apply to the instance"
  type        = map(string)
  default     = {}
}

variable "slaveCount" {
  description = "value for no.of slave"
  type = number
  default = 1
}
variable "masterCount" {
  description = "value for no.of slave"
  type = number
  default = 1
}
