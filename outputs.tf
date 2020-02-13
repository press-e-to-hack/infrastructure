output "Public IP" {
  value = "${digitalocean_droplet.tedicross.ipv4_address}"
}
