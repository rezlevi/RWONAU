module "files" {
  source      = "../files"
  name        = "files"
  content     = var.content
}
  
variable "prefix" {
  description = "The used prefix to add to output"
  type        = string
  default     = "read"
}

variable "content" {
  description = "The content of the files"
  type        = string
  default     = "O48WRX"
}
