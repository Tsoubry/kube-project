resource "digitalocean_kubernetes_cluster" "ts-cluster" {
  name                 = "ts-cluster"
  region               = var.region
  auto_upgrade         = true
  version              = data.digitalocean_kubernetes_versions.ts-cluster.latest_version
  registry_integration = true

  node_pool {
    name       = "worker-pool"
    size       = "s-1vcpu-2gb"
    node_count = 3
    tags = [
      digitalocean_tag.created_with_tf.id
    ]
  }

  maintenance_policy {
    start_time = "04:00"
    day        = "sunday"
  }

  tags = [
    digitalocean_tag.created_with_tf.id
  ]

}

resource "digitalocean_kubernetes_node_pool" "ts-cluster-additional-nodes" {
  cluster_id = digitalocean_kubernetes_cluster.ts-cluster.id

  name       = "additional-node-pool"
  size       = "s-2vcpu-4gb"
  node_count = 1
  tags       = [digitalocean_tag.created_with_tf.id]

}
