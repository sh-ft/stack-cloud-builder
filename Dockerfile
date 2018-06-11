FROM fpco/stack-build:lts-11.10

RUN stack setup --resolver lts-11.10

RUN stack --resolver lts-11.10 build foundation directory text time counduit bloodhound http-client uuid aeson \
    servant-server wai wai-extra warp

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
