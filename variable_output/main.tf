# Use output to print the variable content
output "printed_message" {
  description = "Prints the content of the variable"
  value       = var.content
}
resource "time_sleep" "staging_delay" {  
  create_duration = "2m"
  triggers = {
    always_run = uuid()
  }
  lifecycle {
    replace_triggered_by = [
      self.triggers["always_run"]
    ]
  }
}
