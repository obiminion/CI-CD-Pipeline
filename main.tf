variable "DO_TOKEN" {
  description = "dop_v1_f7d4324ef70e7cb3d6cae15bb50fa04248d0ff9235097bd59960827f48bc3763"
  type        = string
}

variable "SSH_KEY" {
  description = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDDCj7RE7BrIMOuirfgC55Vgl6luf0zhL1Q4/60B9A6IiTSKVO4Ek5KD1MDmnosze/ZxxS3Rb9qyatmkcbF5KF3WNErMGNn6oFaMftcaPNtKwmtfAKhS81w89R4jVJHuBPuvgUKhTI9JNdj+8EaCNr+vXPQorHYYr4hHbxCNXyoQC7BYlflLB0fPcR8oHOknjk1Mg3PWkrgNMIyreEms7ixMx8+dQEvY3cUovKMh6u8Qhasf14C/a2FW5+qY1dNjx+6Ai6sxVsaLDm4MIRP2ZsSaVTKH5d0v5scTA0U3pfxZ+gbiEqehnkzT12ZHmJPEi2sT93sZ5QP8TRs5iyuRKBD rsa-key-20230916"
  type        = string
}

terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"  # you may need to check for the latest version
    }
  }
}

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
