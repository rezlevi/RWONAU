module "files" {
  source  = "./modules/files"
  content = "test"
  name    = "name"
}
  
module "read" {
  source  = "./modules/read"
}

module "write" {
  source = "./modules/write"
}
  
module "data" {
   source = "./modules/data"
   file_path = module.files.example_output[0]
   depends_on = [module.files]
}  

output "file_id" {
   value = module.data.file_id
 }
