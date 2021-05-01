module "nodes" {
  for_each = var.nodes
  source = "./nodes"
  network_id = hcloud_network.kubernetes.id
  node = each.value
  dns_zone_id = data.hdns_zone.zone.id
  depends_on = [
    hcloud_network_subnet.kubernetes
  ]
  ssh_key_id = hcloud_ssh_key.kubernetes.id
  user_data = data.template_file.user_data.rendered
}
