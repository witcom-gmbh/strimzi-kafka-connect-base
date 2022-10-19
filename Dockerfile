ARG BASE_TAG=0.27.0-kafka-3.0.0
FROM quay.io/strimzi/kafka:$BASE_TAG

COPY java.config /etc/crypto-policies/back-ends/

