
---
# Certificates and TLS Termination

## Installing cert-manager

Add with 1 click on DigitalOcean:

```bash
helm repo add jetstack https://charts.jetstack.io
helm show values jetstack/cert-manager --version 1.8.0 > cert-manager/values.yaml

helm upgrade cert-manager jetstack/cert-manager --version 1.8.0 \
  --namespace cert-manager \
  --values cert-manager/values.yaml
```

## Prepare Certificates

Generate a new RSA private key:

```bash
openssl genrsa -out letsencrypt-nginx-private-key.pem 2048
kubectl create secret generic letsencrypt-nginx-private-key --from-file=tls.key=letsencrypt-nginx-private-key.pem --namespace=default
```

## Ingress nginx Setup

Install Nginx ingress controller with 1 click.

Then apply ingress networking helm chart:

```bash
helm install ingress-networking ./ingress-chart --set host=custom-domain.com,email=mail@example.com
```

### Upgrade

To upgrade, use the following command:

```bash
helm upgrade ingress-networking ./ingress-chart --set host=custom-domain.com,email=mail@example.com
```
---
