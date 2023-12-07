resource "digitalocean_container_registry" "python-example" {
  name = "z9pxj2-python-example"
  subscription_tier_slug  = "basic"
  region = var.region
}
