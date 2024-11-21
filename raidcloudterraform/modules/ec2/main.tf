resource "aws_security_group" "dynamic_sg" {
  name        = "${var.instance_name}_sg"
  description = "Security group with dynamic rules based on CSV"

  dynamic "ingress" {
    for_each = [for rule in var.sg_rules : rule if rule.type == "ingress"]
    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = [ingress.value.cidr_block]
    }
  }

  dynamic "egress" {
    for_each = [for rule in var.sg_rules : rule if rule.type == "egress"]
    content {
      from_port   = egress.value.from_port
      to_port     = egress.value.to_port
      protocol    = egress.value.protocol
      cidr_blocks = [egress.value.cidr_block]
    }
  }

  tags = {
    Name = "${var.instance_name}_sg"
  }
}

resource "aws_instance" "main_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  security_groups = [aws_security_group.dynamic_sg.name]

  tags = {
    Name = var.instance_name
  }
}