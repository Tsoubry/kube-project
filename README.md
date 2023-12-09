# How to


connect to the DO registry:
doctl registry login

docker tag hello-world-app registry.digitalocean.com/z9pxj2-python-example/hello-world-app:v0.1.0


docker push registry.digitalocean.com/z9pxj2-python-example/hello-world-app:v0.1.0

doctl registry kubernetes-manifest | kubectl apply -f -

kubectl patch serviceaccount default -p '{"imagePullSecrets": [{"name": "registry-z9pxj2-python-example"}]}'


## Tofu init

!!!

first specify spaces creds (yes with AWS env vars)
export AWS_ACCESS_KEY_ID="your_digitalocean_spaces_access_key"
export AWS_SECRET_ACCESS_KEY="your_digitalocean_spaces_secret_key"

or just do source tf_backend_setup.sh

tf init

## import terraform:

Create inplace resource:

resource "digitalocean_vpc" "example" {}

run: terraform import digitalocean_vpc.example VPC_ID

terraform show > current_state.txt to get the changes


