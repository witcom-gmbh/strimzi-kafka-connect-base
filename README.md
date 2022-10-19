# strimzi-kafka-connect-base

Provides a custom-base image for strimzi kafa-connect. KafkaConnect deployments managed by strimzi.io can build their own images (https://strimzi.io/docs/operators/latest/configuring.html#type-Build-schema-reference)

Sometimes the base-image that strimzi provides is not sufficient. In this case we needed a base image that supports TLS 1.0 for older versions of MS SQL server

## Build image for different versions of strimzi/kafka

```
docker build . --build-arg BASE_TAG=0.26.1-kafka-2.8.1 -t registry/strimzi/kafka-witcom:0.26.1-kafka-2.8.1
docker build . --build-arg BASE_TAG=0.26.1-kafka-3.0.0 -t registry/strimzi/kafka-witcom:0.26.1-kafka-3.0.0
docker build . --build-arg BASE_TAG=0.27.0-kafka-2.8.0 -t registry/strimzi/kafka-witcom:0.27.0-kafka-2.8.0

and so on
```

## Use this base iamge in strimzi-operator

When using helm

```
kafkaConnect:
  image:
    name: kafka-witcom
    registry: registry
    repository: strimzi
```

