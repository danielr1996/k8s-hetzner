resource "hcloud_server" "node" {
  count = var.node.instances
  name = "${var.node.prefix}${count.index}"
  server_type = var.node.type
  image = var.node.image
  location = var.node.location
  ssh_keys = [var.ssh_key_id]
  user_data = var.user_data

  network {
    network_id = var.network_id
  }
}

output "ipaddresses" {
  value = hcloud_server.node[*].ipv4_address
}
