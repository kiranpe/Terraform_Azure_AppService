variable "enabled" {
  type    = bool
  default = true
}

variable "disabled" {
  type    = bool
  default = false
}

variable "rgname" {
  type    = string
  default = "WebAppRG"
}

variable "location" {
  type    = string
  default = "EastUS2"
}

variable "sku_tier" {
  type    = string
  default = "Free"
}

variable "sku_size" {
  type    = string
  default = "F1"
}

variable "dotnet_version" {
  type    = string
  default = "v5.0"
}

variable "env" {
  type    = string
  default = "Dev"
}

variable "service-plan-name" {
  type    = string
  default = "app-service-plan"
}

variable "sevice-plan-kind" {
  type    = string
  default = "Linux"
}

variable "app-service-name" {
  type    = string
  default = "webapp1tr1"
}

variable "runtime-stack" {
  type    = string
  default = "DOTNETCORE|5.0"
}
