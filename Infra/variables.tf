variable "project" {
  type    = string
  default = "assign"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "location" {
  type    = string
  default = "centralindia"
}

variable "app_port" {
  type    = number
  default = 8080
}

variable "bootstrap_image" {
  type        = string
  description = "Placeholder image for first apply; the app pipeline replaces it"
  default     = "docker.io/nginxinc/nginx-unprivileged:stable-alpine" # listens on 8080
}