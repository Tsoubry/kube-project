# Certificates and TLS termination

## installing cert-manager

Add with 1 click on DO

helm repo add jetstack https://charts.jetstack.io
helm show values jetstack/cert-manager --version 1.8.0 > cert-manager/values.yaml


helm upgrade cert-manager jetstack/cert-manager --version 1.8.0 \
  --namespace cert-manager \
  --values cert-manager/values.yaml


Then manually add issuer and networking following get started instructions


## Ingress nginx setup

helm install ingress-networking ./ingress-chart --set host=custom-domain.com

### Upgrade

helm upgrade ingress-networking ./ingress-chart --set host=custom-domain.com


