resource "aws_instance" "test3" {
    ami = "ami-0bcc094591f354be2"
    instance_type = var.type
    count = var.number
    
    tags = {
        Name = var.name 
    }
}
