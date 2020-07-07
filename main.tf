provider "aws" {
    region = "ap-south-1"
 }

variable "inputname" {
    type = string
    description = "Set the name of the VPC"
}
resource "aws_vpc" "myfirstvpc" {
    cidr_block = "10.0.0.0/16"
    tag {
        Name = var.inputname
    }
}

output "myoutput" {
    value = aws_vpc.myfirstvpc.id
}
