terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"  # you may need to check for the latest version
    }
  }
}

provider "digitalocean" {
  token = var.do_token
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
