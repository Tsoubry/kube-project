resource "digitalocean_kubernetes_cluster" "ts-cluster" {
  name    = "ts-cluster"
  region  = "ams3"
  auto_upgrade = true
  version = data.digitalocean_kubernetes_versions.ts-cluster.latest_version

  node_pool {
    name       = "worker-pool"
    size       = "s-1vcpu-2gb"
    node_count = 3
  }

  maintenance_policy {
    start_time = "04:00"
    day        = "sunday"
  }

  tags = [
    digitalocean_tag.created_with_tf.id
  ]

}
