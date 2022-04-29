variable "rg_name" {
  type = string
}

variable "rg_location" {
  type = string
  default = "australiaeast"
}

# add validation later
# these tags are mandatory by the group

variable "rg_tags" {
  type = map
  description = "default tags for resource group"
  default = {
    "Application" = "'tbc'",
    "CostCentre"  = "tbc",
    "Environment" = "'tbc'",
    "ManagedBy"   = "'tbc'",
    "Owner"       = "'tbc'",
    "Support"     = "'tbc'",
  }
}