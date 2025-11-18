variable "my-os-image" {
    type = string
    description = "here I am storing aws ami id"
    # default = "ami-0cae6d6fe6048ca2c"
  
}
variable "machine_size" {
    type = string
  # default = "t2.nano"
}
variable "vm_name" {
    type = string
  # default = "shiv-vm-day2"
}
variable "my_aws_region" {
    type = string
  # default = "us-east-1"
}
variable "private_key_name" {
    type = string
  # default = "splunk-key"
}
