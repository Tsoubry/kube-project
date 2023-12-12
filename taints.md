# Taints and Node-affinity


## Example

Don't allow hello-world-app on service nodes:

kubectl taint nodes additional-node-pool-xasj4 app=hello-world-app:NoExecute 

**NoSchedule** means pods won't be scheduled unless they tolerate the taint, **PreferNoSchedule** suggests not scheduling unless necessary, and **NoExecute** means existing pods on the node will be evicted if they don't tolerate the taint.


I you do want to tolerate it:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: hello-world-app
spec:
  tolerations:
  - key: "app"
    operator: "Equal"
    value: "hello-world-app"
    effect: "NoSchedule"
  containers:
  - name: my-app-container
    image: hello-world
```


## Prefer scheduling of pods on nodes using labels

kubectl label nodes <node-name> <label-key>=<label-value>

Then

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: my-pod
spec:
  nodeSelector:
    example.com/allowed-node: "true"
  containers:
  - name: my-container
    image: nginx
```

Though this caused problems for me, even though 2 replicas were asked it tried to schedule a third pod which was stuck on pending. Only because I added the nodeSelector.

