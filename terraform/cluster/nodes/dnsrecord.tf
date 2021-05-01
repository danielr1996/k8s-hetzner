resource "hdns_record" "record"{
  count = var.node.instances
  zone_id = var.dns_zone_id
  type = "A"
  name = "${hcloud_server.node[count.index].name}.kube"
  value = hcloud_server.node[count.index].ipv4_address
}
