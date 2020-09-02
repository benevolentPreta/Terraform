resource "aws_instance" "server" {
    ami = "ami-0bcc094591f354be2"
    instance_type = var.instance_type
    count = var.number

    vpc_security_group_ids = [aws_security_group.securityA.id]

    tags = {
        Name = "${var.environment}-${var.name}"
    }
}

resource "aws_security_group" "securityA" {
    name        = "${var.environment}-${var.name}"
    description = "Allow all ${var.port}"

    ingress {
        from_port   = var.port
        to_port     = var.port
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_eip" "server_ip" {
    vpc = true
    count = var.number
    instance = aws_instance.server[count.index].id
}
