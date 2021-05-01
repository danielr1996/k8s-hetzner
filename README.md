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
terraform apply
```
to provision your servers 
