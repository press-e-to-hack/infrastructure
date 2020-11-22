output "Public IP" {
  value = "${digitalocean_droplet.nyc-vrt-001.ipv4_address}"
}
