provider "digitalocean" {
  token             = var.do_token
  spaces_access_id  = var.do_spaces_client_id
  spaces_secret_key = var.do_spaces_secret_key
}
