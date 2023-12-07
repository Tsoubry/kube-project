resource "digitalocean_firewall" "firewall" {
  droplet_ids = []
  name        = "k8s-79b53257-2da0-41d4-9a86-f6d5a1239c39-worker"
  tags = [
    "k8s:79b53257-2da0-41d4-9a86-f6d5a1239c39",
  ]

  inbound_rule {
    protocol = "icmp"
    source_addresses = [
      "10.0.0.0/8",
      "172.16.0.0/12",
      "192.168.0.0/16",
    ]
    source_droplet_ids        = []
    source_kubernetes_ids     = []
    source_load_balancer_uids = []
    source_tags               = []
  }
  inbound_rule {
    port_range = "all"
    protocol   = "tcp"
    source_addresses = [
      "10.0.0.0/8",
      "172.16.0.0/12",
      "192.168.0.0/16",
    ]
    source_droplet_ids        = []
    source_kubernetes_ids     = []
    source_load_balancer_uids = []
    source_tags               = []
  }
  inbound_rule {
    port_range = "all"
    protocol   = "udp"
    source_addresses = [
      "10.0.0.0/8",
      "172.16.0.0/12",
      "192.168.0.0/16",
    ]
    source_droplet_ids        = []
    source_kubernetes_ids     = []
    source_load_balancer_uids = []
    source_tags               = []
  }

  outbound_rule {
    destination_addresses = [
      "0.0.0.0/0",
    ]
    destination_droplet_ids        = []
    destination_kubernetes_ids     = []
    destination_load_balancer_uids = []
    destination_tags               = []
    protocol                       = "icmp"
  }
  outbound_rule {
    destination_addresses = [
      "0.0.0.0/0",
    ]
    destination_droplet_ids        = []
    destination_kubernetes_ids     = []
    destination_load_balancer_uids = []
    destination_tags               = []
    port_range                     = "all"
    protocol                       = "tcp"
  }
  outbound_rule {
    destination_addresses = [
      "0.0.0.0/0",
    ]
    destination_droplet_ids        = []
    destination_kubernetes_ids     = []
    destination_load_balancer_uids = []
    destination_tags               = []
    port_range                     = "all"
    protocol                       = "udp"
  }
}

resource "digitalocean_firewall" "firewall-public-access" {
  droplet_ids = []
  name        = "k8s-public-access-79b53257-2da0-41d4-9a86-f6d5a1239c39"
  tags = [
    "k8s:79b53257-2da0-41d4-9a86-f6d5a1239c39",
  ]

  outbound_rule {
    destination_addresses = [
      "0.0.0.0/0",
      "::/0",
    ]
    destination_droplet_ids        = []
    destination_kubernetes_ids     = []
    destination_load_balancer_uids = []
    destination_tags               = []
    protocol                       = "icmp"
  }
  outbound_rule {
    destination_addresses = [
      "0.0.0.0/0",
      "::/0",
    ]
    destination_droplet_ids        = []
    destination_kubernetes_ids     = []
    destination_load_balancer_uids = []
    destination_tags               = []
    port_range                     = "all"
    protocol                       = "tcp"
  }
  outbound_rule {
    destination_addresses = [
      "0.0.0.0/0",
      "::/0",
    ]
    destination_droplet_ids        = []
    destination_kubernetes_ids     = []
    destination_load_balancer_uids = []
    destination_tags               = []
    port_range                     = "all"
    protocol                       = "udp"
  }
}
