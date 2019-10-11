# helm-chart

To use these helm charts

`helm repo add gabrielsson https://gabrielsson.github.io/helm-chart`

and look at all the charts: 

`helm search gabrielsson`


## pizza-menu

`helm upgrade pizza-menu gabrielsson/pizza-menu --install`

To see what it does

`kubectl port-forward service/pizza-menu-facade 8080`

`open http://localhost:8080`
