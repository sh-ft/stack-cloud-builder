FROM fpco/stack-build:lts-6.4

RUN stack setup --resolver lts-6.4

RUN stack --resolver lts-6.4 build classy-prelude time text bytestring containers unordered-containers transformers \
      either resourcet resource-pool monad-control persistent persistent-postgresql persistent-template esqueleto \
      monad-logger uuid path-pieces http-api-data random data-default aeson aeson-better-errors aeson-casing \
      lens lens-aeson ig conduit-combinators http-conduit http-types servant-server wai wai-extra warp flock \
      directory strict random-fu random-extras random-source async hspec scientific cassava concurrent-extra retry

ENTRYPOINT ["stack"]
