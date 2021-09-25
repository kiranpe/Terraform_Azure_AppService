variable "rgname" {
  type    = string
  default = "WebAppRG"
}

variable "location" {
  type    = string
  default = "EastUS2"
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
