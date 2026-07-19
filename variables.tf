variable "yourname" {
  type = string
}
 
variable "location" {
  description = "Azure region for target resources. Choose a region close to your AWS region."
  type        = string
  default     = "East US"
}
 
variable "tags" {
  type = map(string)
  default = {
    project    = "azure-migrate-lab"
    managed_by = "terraform"
  }
}
# Had to add a variable for admin password for the project to work

variable "appliance_admin_password" {
  description = ""
  type        = string
  default     = "G@mesforlife007"
}

variable "replication_admin_password" {
  description = "Admin password for the replication appliance VM."
  type        = string
  sensitive   = true
}
