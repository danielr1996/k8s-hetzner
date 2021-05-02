resource "hcloud_ssh_key" "kubernetes" {
  name = "Public Key"
  public_key =var.ssh_key_file.public
}
