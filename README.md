# How to


connect to the DO registry:
doctl registry login

docker tag hello-world-app registry.digitalocean.com/z9pxj2-python-example/hello-world-app:v0.1.0


docker push registry.digitalocean.com/z9pxj2-python-example/hello-world-app:v0.1.0

doctl registry kubernetes-manifest | kubectl apply -f -

kubectl patch serviceaccount default -p '{"imagePullSecrets": [{"name": "registry-z9pxj2-python-example"}]}'

