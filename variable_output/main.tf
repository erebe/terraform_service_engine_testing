# Use output to print the variable content
output "printed_message" {
  description = "Prints the content of the variable"
  value       = var.content
}
resource "null_resource" "always_recreate" {
  triggers = {
    timestamp = timestamp()
  }
}

resource "time_sleep" "staging_delay" {
  create_duration = "2m"
  
  lifecycle {
    replace_triggered_by = [
      null_resource.always_recreate
    ]
  }
}