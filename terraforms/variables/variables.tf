variable "sg-name" {
    type = string
    default = "roboshop-all-aws"
}

variable "sg-desc" {
    type = string
    default = "Allow TLS inbound traffic"
}

variable "inbount-ports" {
    type = number
    default = 0
}


variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}