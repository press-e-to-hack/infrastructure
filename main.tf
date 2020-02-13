# Configure the GitHub Provider
provider "github" {
  organization = "${var.github_organization}"
  # You need to set this in your .bashrc
  # export GITHUB_TOKEN="GitHub personal access token"
}

provider "digitalocean" {
  # You need to set this in your .bashrc
  # export DIGITALOCEAN_TOKEN="Digital Ocean personal access token"
}

resource "digitalocean_droplet" "tedicross" {
  ssh_keys           = [26498168]
  image              = "${var.ubuntu}"
  region             = "${var.do_nyc1}"
  size               = "s-1vcpu-1gb"
  private_networking = false
  backups            = false
  ipv6               = false
  name               = "ubuntu-s-1vcpu-1gb-nyc1-01"
}
