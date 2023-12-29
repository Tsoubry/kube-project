Install wash-cli

cargo binstall wash-cli


helm install wasmcloud oci://ghcr.io/wasmcloud/wasmcloud-chart --version 0.7.1 -f wasmachine/wasmcloud/values.yaml -n wasmcloud

Port forward

kubectl port-forward deployment/wasmcloud-wasmcloud-chart 4222 -n wasmcloud



wash ctx new do --interactive

wash ctx default do

wash up --nats-websocket-port 4001

deploy app
wash app deploy wadm.yaml


wash ui --experimental









