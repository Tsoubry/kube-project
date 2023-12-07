resource "digitalocean_vpc" "ts-vpc" {
  ip_range = "10.110.0.0/20"
  name     = "default-ams3"
  region   = "ams3"
}
