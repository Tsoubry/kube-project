provider "digitalocean" {
  token             = var.do_token
  spaces_access_id  = var.do_spaces_client_id
  spaces_secret_key = var.do_spaces_secret_key
}

terraform {

  backend "s3" {
    endpoint                    = "ams3.digitaloceanspaces.com"
    bucket                      = "tf-state-bucket-ccr9m7"
    key                         = "terraform.tfstate"
    region                      = "us-east-1" # This can be a dummy value for DigitalOcean
    skip_credentials_validation = true
    skip_metadata_api_check     = true
  }

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}
