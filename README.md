# hetzner-kubernetes
![GitHub](https://img.shields.io/github/license/danielr1996/hetzner-kubernetes)

hetzner-kubernetes is a combination of [terraform](https://www.terraform.io/) declarations and 
[ansible](https://docs.ansible.com/ansible/latest/index.html) tasks that bootstraps 
a kubernetes cluster on [Hetzner Cloud](https://www.hetzner.com/de/cloud)

## Usage

- set credentials in `credentials.auto.tfvars`
- optionally set values in `terraform.tfvars` (has sensisble default)

Run

```
cd terraform && terraform apply
```
to provision your servers 

Then run ansible to install kubernetes on the provisioned infrastructure
> A Vagrantfile is included to be able to run ansible on windows. 
> 
> To use vagrant [install vagrant according to the official documentation](https://www.vagrantup.com/docs/installation)
> Then run `vagrant up` to install the vagrant box and `vagrant ssh` to connect to your box.

Run 
```
cd ansible && ansible-galaxy collection install community.kubernetes && ansible-playbook playbook.yaml
```

## Next steps
This leaves you with a basic kubernetes setup that you can deploy applications into.
However your applications are only accesible inside the cluster or with `kubectl port-forward`, 
therefore you might want to install an ingress controller to allow forwarding traffic to your deployments.


## Involved Software
- hetzner cloud
- hetzner dns
- terraform
- ansible
- kubeadm
- flannel
- [hetzner cloud controller manager](https://github.com/hetznercloud/hcloud-cloud-controller-manager)
- hetzner csi driver
- https://community.hetzner.com/tutorials/install-kubernetes-cluster
