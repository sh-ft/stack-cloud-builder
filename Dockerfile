FROM fpco/stack-build:lts-12.26

RUN stack setup --resolver lts-12.26

RUN stack --resolver lts-12.26 build \
  aeson-1.3.1.1 aeson-better-errors-0.9.1.0 aeson-casing-0.1.0.5 async-2.2.1 bytestring-0.10.8.2 cassava-0.5.1.0 \
  classy-prelude-1.4.0 concurrent-extra-0.7.0.12 conduit-1.3.1 containers-0.5.11.0 data-default-0.7.1.1 \
  directory-1.3.1.5 either-5.0.1 esqueleto-2.7.0 flock-0.3.1.8 hedis-0.10.10 hspec-2.5.5 http-api-data-0.3.8.1 \
  http-conduit-2.3.2 http-types-0.12.2 hworker-0.1.0.1 lens-4.16.1 lens-aeson-1.0.2 monad-control-1.0.2.3 \
  monad-logger-0.3.30 parsec-3.1.13.0 path-pieces-0.2.1 persistent-2.8.2 persistent-postgresql-2.8.2.0 \
  persistent-template-2.5.4 random-1.1 random-extras-0.19 random-fu-0.2.7.0 random-source-0.3.0.6 \
  resource-pool-0.2.3.2 resourcet-1.2.2 retry-0.7.7.0 scientific-0.3.6.2 servant-server-0.14.1 \
  strict-0.3.2 text-1.2.3.1 time-1.8.0.2 transformers-0.5.5.0 unordered-containers-0.2.9.0 uuid-1.3.13 \
  wai-3.2.1.2 wai-extra-3.0.24.3 warp-3.2.25

RUN \
   apt-get -y update && \
   apt-get -y install apt-transport-https ca-certificates curl \
       # These are necessary for add-apt-respository
       software-properties-common python-software-properties && \
   curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add - && \
   apt-key fingerprint 58118E89F3A912897C070ADBF76221572C52609D && \
   add-apt-repository \
       "deb https://apt.dockerproject.org/repo/ \
       ubuntu-$(lsb_release -cs) \
       main" && \
   apt-get -y update
ARG DOCKER_VERSION=17.05.0~ce-0~ubuntu-xenial
RUN apt-get -y install docker-engine=${DOCKER_VERSION}

ENTRYPOINT ["stack"]
