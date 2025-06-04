data "template_file" "ansible_master" {
  template = file("${path.module}/data/ansible_master.sh")
}

data "template_file" "ansible_slave" {
  template = file("${path.module}/data/ansible_slave.sh")
}
