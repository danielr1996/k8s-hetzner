data "template_file" "user_data" {
  template = file("scripts/cloud-init.yaml")
}

resource "hcloud_ssh_key" "kubernetes" {
  name = "Public Key"
  public_key =var.ssh_key_file.public
}
