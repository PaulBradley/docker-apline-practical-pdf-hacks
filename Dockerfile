FROM alpine
MAINTAINER Paul Bradley <contact@paulbradley.org>

RUN mkdir /hack
RUN mkdir /hack/lib

RUN apk add --update pdftk
RUN apk add --update poppler-utils
RUN apk add --update openjdk8-jre


COPY PortableSigner.jar /hack/
COPY lib /hack/lib
