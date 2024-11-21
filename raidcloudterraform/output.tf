output "raidcloudweb_instance_public_ip" {
  description = "Public IP of raidcloudweb01 instance"
  value       = module.raidcloudweb.instance_public_ip
}

output "raidcloudweb_instance_id" {
  description = "Instance ID of raidcloudweb01 instance"
  value       = module.raidcloudweb.instance_id
}

#output "ec2_2_instance_public_ip" {
#  description = "Public IP of SonarQube instance"
#  value       = module.sonarqube.instance_public_ip
#}

#output "ec2_2_instance_id" {
#  description = "Instance ID of SonarQube instance"
#  value       = module.sonarqube.instance_id
#}