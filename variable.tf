# Current Datacenter Region

variable "do_nyc1" {
  description = "Digital Ocean New York Data Center 1"
  default     = "nyc1"
}

# Default OS

variable "ubuntu" {
  description = "Default LTS"
  default     = "ubuntu-18-04-x64"
}

# GitHub Organization

variable "github_organization" {
  description = "GitHub Organization"
  default     = "press-e-to-hack"
}
