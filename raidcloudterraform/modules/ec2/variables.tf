variable "ami_id" {
  description = "AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "The SSH key name to access the instance"
  type        = string
}

variable "sg_rules" {
  description = "A list of security group rules"
  type = list(object({
    type       = string
    from_port  = number
    to_port    = number
    protocol   = string
    cidr_block = string
  }))
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}