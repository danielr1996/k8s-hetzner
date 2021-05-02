# Create an ansible inventory file

resource "local_file" "ansible_inventory" {
  content = yamlencode({
    all: {
      children: {for k, v in var.nodes : k => {hosts: {for s in module.nodes[k].ipaddresses: s => ""}}}
      vars: {
        ansible_ssh_private_key_file: "ssh_key"
        ansible_user: "root"
        hcloud_token: var.hcloud_token
        network_id: hcloud_network.kubernetes.id
      }
    }
  })
  filename = "../ansible/hosts.yaml"
}

# Write the ssh key to the ansible directory to be mounted inside the vagrant vm
resource "local_file" "ansible_ssh_key" {
  content = var.ssh_key_file.private
  filename = "../ansible/ssh_key_terraform"
}
