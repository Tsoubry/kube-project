output "cluster_id" {
  value = digitalocean_kubernetes_cluster.ts-cluster.id
}

output "cluster_endpoint" {
  value = digitalocean_kubernetes_cluster.ts-cluster.endpoint
}
