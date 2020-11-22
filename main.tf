# Configure the GitHub Provider
provider "github" {
  organization = "${var.github_organization}"
  # You need to set this in your .bashrc
  # export GITHUB_TOKEN="GitHub personal access token"
}

# Add users to the organization

resource "github_membership" "membership_for_eredisg" {
  username = "eredisg"
  role     = "owner"
}

resource "github_membership" "membership_for_neverrend" {
  username = "neverrend"
  role     = "owner"
}

resource "github_membership" "membership_for_oxr463" {
  username = "oxr463"
  role     = "owner"
}

provider "digitalocean" {
  # You need to set this in your .bashrc
  # export DIGITALOCEAN_TOKEN="Digital Ocean personal access token"
}

resource "digitalocean_droplet" "nyc-vrt-001" {
  ssh_keys           = [26498168]
  image              = "${var.ubuntu}"
  region             = "${var.do_nyc1}"
  size               = "s-1vcpu-1gb"
  private_networking = false
  backups            = false
  ipv6               = false
  name               = "nyc-vrt-001"
}
