provider "null" {}

resource "null_resource" "hello" {
  provisioner "local-exec" {
    command = var.command
  }
}

output "execution_id" {
  value       = null_resource.hello.id
  description = "The ID of the resource: null_resource"
}
