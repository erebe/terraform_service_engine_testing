provider "null" {}

resource "null_resource" "hello" {
  provisioner "local-exec" {
    command = var.command
  }
}

