#variables
variable "rg_name" {
    type            = string
  }

variable "rg_location" {
    type            = string
  }


variable "asp_name" {
    type            = string
  }

variable "asp_sku" {
    type            = map
    default         = {
        tier = "Free"
        size = "F1"
    }
  }

variable "webapp_name" {
    type            = string
  }