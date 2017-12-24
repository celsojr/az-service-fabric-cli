FROM azuresdk/azure-cli-python:latest

ARG CLI_VERSION

# Metadata as defined at http://label-schema.org
ARG BUILD_DATE
LABEL maintainer="Celso Jr" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.name="[Non-Official] Azure Service Fabric CLI" \
      org.label-schema.license="MIT" \
      org.label-schema.description="[Non-Official] The Azure Service Fabric command-line interface (CLI) is a command-line utility for interacting with and managing Service Fabric entities." \
      org.label-schema.url="https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-overview" \
      org.label-schema.usage="https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-cli" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/celsojr/az-service-fabric-cli.git" \
      org.label-schema.docker.cmd="docker run -it --name the_name celsojr/az-service-fabric-cli:$CLI_VERSION"

RUN apk upgrade --no-cache \
  && apk add --no-cache \
  && pip3 install sfctl

WORKDIR /

CMD bash
