provider "digitalocean" {
  token = var.DO_TOKEN
}

resource "digitalocean_droplet" "web" {
  image  = "docker-18-04"
  name   = "CI/CD Obinna Website"
  region = "lon1"  # London region
  size   = "s-1vcpu-1gb"  # Single vCPU and 1GB RAM
  ssh_keys = [
    var.SSH_KEY
  ]
}
