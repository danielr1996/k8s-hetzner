variable "hcloud_token" {}
variable "hdns_token" {}
variable "ssh_key_file" {}
variable "subnet" {}
variable "nodes" {}
variable "dns_zone_name" {}

terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "1.26.0"
    }
    hdns = {
      source = "danielr1996/hdns"
      version = "1.0.4"
    }
  }
}

provider "hcloud" {
  token = var.hcloud_token
}

provider "hdns" {
  token = var.hdns_token
}


module "cluster" {
  source ="./cluster"
  nodes = var.nodes
  ssh_key_file = var.ssh_key_file
  dns_zone_name = var.dns_zone_name
  subnet = var.subnet
  hcloud_token = var.hcloud_token
}
