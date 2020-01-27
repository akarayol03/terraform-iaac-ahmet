resource "aws_route53_record" "web" { 
  zone_id = "Z339ZQTAJHGFCO" 
  name    = "www.originalpeak.com." 
  type    = "A" 
  ttl     = "60"
  records = [aws_instance.web[0].public_ip] 
}