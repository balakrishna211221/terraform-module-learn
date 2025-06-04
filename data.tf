data "template_file" "ansible_master" {
  template = file("/data/ansible_master.sh")
}

data "template_file" "ansible_slave" {
  template = file("/data/ansible_slave.sh")
}
