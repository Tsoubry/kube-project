
---
# Learning more Terraform, Kubernetes, etc...

## Digital Ocean 

Follow the steps to install doctl on the website.


### Pushing an image to the registry

Connect to the DO registry:
```bash
doctl registry login
```

Build image and than you can tag + push:
```bash
docker tag hello-world-app registry.digitalocean.com/z9pxj2-python-example/hello-world-app:v0.1.0
docker push registry.digitalocean.com/z9pxj2-python-example/hello-world-app:v0.1.0
```

Todo: check the following

doctl registry kubernetes-manifest | kubectl apply -f -

kubectl patch serviceaccount default -p '{"imagePullSecrets": [{"name": "registry-z9pxj2-python-example"}]}'


## Tofu setup

Install tofu

Then specify spaces creds (yes with AWS env vars)
```bash
export AWS_ACCESS_KEY_ID="your_digitalocean_spaces_access_key"
export AWS_SECRET_ACCESS_KEY="your_digitalocean_spaces_secret_key"
```

or just run it from a script like
```bash
source tf_backend_setup.sh
```
then run:
```bash
tf init
```

## Import from terraform:

To import an existing resource in the cloud into the terraform state:

1. Create inplace resource:

    For instance:
    ```
    resource "digitalocean_vpc" "example" {}
    ```

2. Find the right VPC_ID, usually you can do this with doctl.

3. Import the resource:
    ```bash
    terraform import digitalocean_vpc.example VPC_ID
    ```

4. Export the state to a file to get the changes
    ```bash
    terraform show > current_state.txt
    ```

5. Adapt the resource with the changes in the state and double check that everything works using tf plan.


## VPN into the cluster

Using Wireguard vpn: https://github.com/bryopsida/wireguard-chart

helm repo add wireguard https://bryopsida.github.io/wireguard-chart 
helm repo update
helm install wg-vpn wireguard/wireguard -f wireguard/values.yaml  


---
