variable "nsg_name" {
  type = string
}
variable "environment" {
    type = string
}
variable "project_name" {
    type = string
}
variable "common_tags" {
    type = map 
    default = {}
}