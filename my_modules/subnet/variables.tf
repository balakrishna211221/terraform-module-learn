variable "vpc_id" {
  description = "The VPC ID to create the subnet in"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone for the subnet"
  type        = string
  default     = null
}

variable "map_public_ip_on_launch" {
  description = "Whether to assign public IPs to instances launched in the subnet"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to apply to the subnet"
  type        = map(string)
  default     = {}
}
