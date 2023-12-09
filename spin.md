# Spin

Install on kubernetes:

for v2.0.1

helm install fermyon-spin oci://ghcr.io/fermyon/charts/spin-containerd-shim-installer --version 0.9.2



Install spin locally

brew tap fermyon/tap
brew install fermyon/tap/spin

spin plugin install -u https://raw.githubusercontent.com/chrismatteson/spin-plugin-k8s/main/k8s.json

spin new

rustup target add wasm32-wasi

spin build

