[![Build Status](https://travis-ci.org/digitalocean/doks-example.svg?branch=master)](https://travis-ci.org/digitalocean/doks-example)

# Getting Started

 1. Create your Kubernetes cluster: `doctl k8s cluster create example`
 1. Check that your cluster is available: `kubectl --context do-nyc1-example get nodes`
 1. Deploy a workload to your cluster: `kubectl --context do-nyc1-example apply -f manifest.yaml`
 1. Wait for the service to be ready: `script/wait-for-service do-nyc1-example doks-example`
 1. Open the returned IP address in your browser, or run `open http://$(kubectl --context do-nyc1-example get service doks-example --template="{{range .status.loadBalancer.ingress}}{{.ip}}{{end}}")`

Or you can just run `script/up` to do all of this.

## Cleaning up

Run `script/down` to tear down the cluster and remove the load-balancer.

**Note:** If you delete the cluster directly, the load-balancer will stick around and result in charges.

Integrantes Practica 4:
TEPAS MAZARIEGO, KENIA STEPHANNIE              TM17013
RAMIREZ PERALTA, LUIS MARIO                    RP18011
RAMIREZ PERALTA, JOSE CARLOS                   RP18010

A continuacion, el repositorio adjunta los archivos utilizados tanto para hacer la prueba en Kubernetes, y ademas, la primera parte "dockerfile", donde se adjunta la creacion de un dockerfile.

