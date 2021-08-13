variable "region" {
  type        = string
  description = "Please provide your region"
  default     = "eu-west-1"
}
variable "key_name" {
  type        = string
  description = "Please provide your key_name"
}

variable "public_key" {
  type        = string
  description = "Please provide your public_key"
  default     = "~/.ssh/id_rsa.pub"
}

variable "key_tags" {
  type        = map(string)
  description = "Please provide your tags"
}

variable "instance_type" {
  type        = string
  description = "Please provide instance type"
}

# Sec group variables 

#variable "sec_group_name" {}
#variable "description" {}
#variable "from_port" {}
#variable "to_port" {}

#variable "allowed_hosts" {
 # type        = list(any)
  #description = "Please provide list of IPs"
#}