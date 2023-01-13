resource "local_file" "example" {
  filename = "example.txt"
  content = var.content
}

data "local_file" "example" {
  filename = "example.txt"  
}

output "data-source-result" {
  value = data.local_file.example.content
}

variable "content" {
  type = string
  default = "variable-from-tf"
}

output "file-id" {
    value = local_file.example.id
}

output "content" {
    value = local_file.example.content
}