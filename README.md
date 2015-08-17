# docker-kibana

Builds a docker image for running kibana in container.

## Requirements

A working Docker setup and a valid shell (e.g., bash).

To join an existing cluster, run a registrator container beside this container
and pass in the SERVICENAME="elasticsearch-9300.service.consul" or similar for
the elastic search service pool.

## Getting Started
Build the container and run it.

```
./build.sh
docker run -d vmware-opencloud/elasticsearch
```

By default, we join the elasticsearch cluster in elasticsearch-9300.service.consul.
We use DNS SRV records to identify the nodes in the cluster to join. Set
SERVICENAME environment variable to a SVR records, or to the consul service name
for the pool, which is the same thing.

## Example

```
docker run -d gliderlabs/registrator:master
docker run -d vmware-opencloud/kibana

# open browser to http://kibana.service.consul

```

## License

TBD

## Author Information

This role was created in 2015 by [Tom Scanlan / VMware](http://www.vmware.com/).
