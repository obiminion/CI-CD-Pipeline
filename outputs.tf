output "droplet_ip_address" {
  value = digitalocean_droplet.web.ipv4_address
  description = "The IP address of the provisioned droplet."
}
