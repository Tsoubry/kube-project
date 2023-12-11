# Keda


## Installing

Add: 

helm repo add kedacore https://kedacore.github.io/charts
helm repo update
helm install keda kedacore/keda --namespace keda --create-namespace


## Using Keda

k get scaledobject -n default

create a scaledobject see: https://keda.sh/docs/2.12/scalers/prometheus/


