output "r1_public_ip" {
  value = module.ec2_region1.public_ip
}

output "r2_public_ip" {
  value = module.ec2_region2.public_ip
}
