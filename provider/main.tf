resource "aws_instance" "test3" {
    ami = "ami-0bcc094591f354be2"
    instance_type = "t2.micro"
    count = "1"
    
    tags = {
        Name = "test3"
    }
}
