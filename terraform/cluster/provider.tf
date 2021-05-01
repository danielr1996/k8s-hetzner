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
