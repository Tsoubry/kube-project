
---

# Add Advanced Metrics

## Kube State Metrics

For detailed instructions, refer to the [DigitalOcean Kube State Metrics documentation](https://docs.digitalocean.com/products/kubernetes/how-to/monitor-advanced/).

Clone the kube-state-metrics repository using:

```bash
git clone https://github.com/kubernetes/kube-state-metrics.git
```

Create the necessary resources with:

```bash
kubectl create -f kube-state-metrics/examples/standard/
```

# Add metrics server

Kubernetes metrics server: https://github.com/kubernetes-sigs/metrics-server



## Linkerd 

### Add Service Mesh

For initial setup, follow the instructions in the [Linkerd Getting Started Guide](https://linkerd.io/2.14/getting-started/).

Apply Linkerd to your deployment using:

```bash
linkerd inject app-deployment.yaml > app-deployment.yaml
kubectl apply -f app-deployment.yaml
```

### Access the Dashboard

To open the Linkerd dashboard, use:

```bash
linkerd viz dashboard
```

---
