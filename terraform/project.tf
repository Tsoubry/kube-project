resource "digitalocean_project" "kube-project" {

  name        = var.project_name
  description = "Update your project information under Settings"
  environment = var.environment
  is_default  = true
  purpose     = "Just trying out DigitalOcean"
  resources = [
    digitalocean_kubernetes_cluster.ts-cluster.urn,
    digitalocean_spaces_bucket.tf-state-bucket-ccr9m7.urn
  ]
}
