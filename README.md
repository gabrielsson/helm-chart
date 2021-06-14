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

![Pizza Menu Generator](docs/pizza.gif)


# Publish new version of a chart

Update the `Chart.yaml` version with a new version number and package the helm-chart 
```
helm package helm-chart-sources/<chart-name>
```
This will generate a new `.tgz` file. This file must be made available and metadata added to index.yaml
```
 helm repo index . --url https://gabrielsson.github.io/helm-chart --merge index.yaml
```
which indexes current folder with all tgz files and updates the index.yaml accordingly. 