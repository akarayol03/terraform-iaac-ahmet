resource "aws_instance" "web" { 
    ami                          = var.ami
    instance_type                = var.instance_type
    count                        = var.count_instance
    associate_public_ip_address  = var.associate_public_ip_address
    key_name                     = var.key_name
    security_groups              = var.security_groups              
    
    lifecycle{
        prevent_destroy = false
    }
    
    tags = { 
    Name = "TerraformTest${count.index +1}" 
    }
} 
