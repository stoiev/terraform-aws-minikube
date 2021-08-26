#####
# Output
#####

output "ssh_user" {
  description = "SSH user to download kubeconfig file"
  value       = "centos"
}

output "public_ip" {
  description = "Public IP of kubernetes instance"
  value       = aws_instance.minikube.public_ip
}

output "kubeconfig_ip" {
  description = "Path to the kubeconfig file using IP address"
  value       = "/home/centos/kubeconfig_ip"
}

