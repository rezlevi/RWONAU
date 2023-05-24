output "content_read" {
  value = "${var.prefix}-${module.files.file_content_md5}"
}
