resource "aws_instance" "test7A" {
    ami = "ami-0bcc094591f354be2"
    instance_type = var.type
    count = var.number

    vpc_security_group_ids = [data.terraform_remote_state.componentB.outputs.security_group_id]

    tags = {
        Name = var.name
    }
}
