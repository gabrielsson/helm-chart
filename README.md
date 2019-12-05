# helm-chart

To use these helm charts
```
helm repo add gabrielsson https://gabrielsson.github.io/helm-chart
```

and look at all the charts: 

```
helm search repo gabrielsson
```


## pizza-menu

```
helm upgrade -n pizza-menu pizza-menu  gabrielsson/pizza-menu --install
```

To see what it does

```
kubectl -n pizza-menu port-forward service/pizza-menu-facade 8080

open http://localhost:8080
```
