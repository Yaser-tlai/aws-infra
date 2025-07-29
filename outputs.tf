output "ip_ec2" {
  value = format("https://%s", module.ec2.ip)
}