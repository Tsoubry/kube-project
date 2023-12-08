resource "digitalocean_spaces_bucket" "tf-state-bucket-ccr9m7" {
  name          = "tf-state-bucket-ccr9m7"
  region        = var.region
  acl           = "private"
  force_destroy = true
}
