resource "aws_instance" "web" { 
    ami                          = var.ami
    instance_type                = var.instance_type
    associate_public_ip_address  = var.associate_public_ip_address
    key_name                     = var.key_name
    security_groups              = var.security_groups
    user_data                    = var.user_data                

tags = { 
    Name = "TerraformTest" 
    }
} 