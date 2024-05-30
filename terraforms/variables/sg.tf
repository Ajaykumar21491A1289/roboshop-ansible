resource "aws_security_group" "roboshop-all" {   #this  name is for  terraform, for terraform reference only
  name        = var.sg-name   # this is your security group name
  description = var.sg-desc
  #vpc_id      = aws_vpc.main.id
  ingress {
    from_port        = var.inbount-ports
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks  #internet reference
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  tags = {
    Name = "roboshop-all-aws"
  }
}
