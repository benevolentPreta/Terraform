resource "aws_instance" "test5" {
    ami = "ami-0bcc094591f354be2"
    instance_type = var.type
    count = var.number
    
    tags = {
        Name = var.name 
    }
}

resource "aws_eip" "test5_ip" {
    vpc = true 
    count = var.number
    instance = aws_instance.test5[count.index].id
}

resource "aws_s3_bucket" "test5_bucket" {
    bucket = "instance-${var.name}"
    acl = var.bucket_acl

    depends_on = [aws_instance.test5]
}
