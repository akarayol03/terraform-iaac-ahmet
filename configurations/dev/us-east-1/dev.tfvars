ami                          = "ami-062f7200baf2fa504"
instance_type                = "t2.micro"
count_instance               = 3
associate_public_ip_address  = "true"
user                         = "ec2-user"
ssh_key_location             = "~/.ssh/id_rsa"
key_name                     = "deployer"
security_groups              = ["allow_ssh"]