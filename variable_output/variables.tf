variable "content" {
  description = "Content to output"
  type        = string
}

variable "sleep_duration" {
  description = "Duration to sleep in seconds"
  type        = number
  default     = 120  # 2 minutes default
}