subnet = {
  range = "10.98.0.0/16"
  zone = "eu-central"
}

nodes = {
  master = {
    type = "cpx11"
    prefix = "master"
    image = "ubuntu-18.04"
    location = "nbg1"
    // Currently only one master instance is supported because multiple master nodes would require a high availability setup
    instances = 1
  },
  worker = {
    type = "cx21"
    prefix = "worker"
    image = "ubuntu-18.04"
    location = "nbg1"
    instances = 2
  }
}
