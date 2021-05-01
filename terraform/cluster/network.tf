resource "hcloud_network" "kubernetes" {
  name = "kubernetes"
  ip_range = var.subnet.range
}

resource "hcloud_network_subnet" "kubernetes" {
  network_id = hcloud_network.kubernetes.id
  type = "server"
  network_zone = var.subnet.zone
  ip_range = var.subnet.range
}
