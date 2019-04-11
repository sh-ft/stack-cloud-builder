FROM fpco/stack-build:lts-12.26

RUN stack setup --resolver lts-12.26

RUN stack --resolver lts-12.26 build Cabal-2.2.0.1 HTTP-4000.3.12 HUnit-1.6.0.0 MonadPrompt-1.0.0.5 MonadRandom-0.5.1.1 Only-0.1 QuickCheck-2.11.3 \
  StateVar-1.1.1.1 adjunctions-4.4 aeson-1.3.1.1 aeson-better-errors-0.9.1.0 aeson-casing-0.1.0.5 aeson-compat-0.3.9 \
  ansi-terminal-0.8.2 ansi-wl-pprint-0.6.8.2 appar-0.1.7 array-0.5.2.0 asn1-encoding-0.9.5 asn1-parse-0.9.4 \
  asn1-types-0.3.2 async-2.2.1 attoparsec-0.13.2.2 attoparsec-iso8601-1.0.1.0 auto-update-0.1.4 base-4.11.1.0 \
  base-compat-0.10.5 base-orphans-0.7 base64-bytestring-1.0.0.2 basement-0.0.8 basic-prelude-0.7.0 bifunctors-5.5.3 \
  binary-0.8.5.1 blaze-builder-0.4.1.0 blaze-html-0.9.1.1 blaze-markup-0.8.2.2 bsb-http-chunked-0.0.0.4 byteable-0.1.1 \
  byteorder-1.0.4 bytes-0.15.5 bytestring-0.10.8.2 bytestring-builder-0.10.8.2.0 bytestring-lexing-0.5.0.2 \
  cabal-doctest-1.0.6 call-stack-0.1.0 case-insensitive-1.2.0.11 cassava-0.5.1.0 cereal-0.5.7.0 chunked-data-0.3.1 \
  classy-prelude-1.4.0 clock-0.7.2 collector-0.1.0.0 colour-2.3.4 comonad-5.0.4 concurrent-extra-0.7.0.12 conduit-1.3.1 \
  conduit-combinators-1.3.0 conduit-extra-1.3.0 connection-0.2.8 containers-0.5.11.0 contravariant-1.4.1 cookie-0.4.4 \
  cryptohash-md5-0.11.100.1 cryptohash-sha1-0.11.100.1 cryptonite-0.25 data-default-0.7.1.1 data-default-class-0.1.2.0 \
  data-default-instances-containers-0.0.1 data-default-instances-dlist-0.0.1 data-default-instances-old-locale-0.0.1 \
  deepseq-1.4.3.0 directory-1.3.1.5 distributive-0.5.3 dlist-0.8.0.5 dlist-instances-0.1.1.1 easy-file-0.2.2 \
  either-5.0.1 entropy-0.4.1.4 erf-2.0.0.0 errors-2.3.0 esqueleto-2.7.0 exceptions-0.10.0 fast-logger-2.4.11 \
  file-embed-0.0.10.1 filepath-1.4.2 flexible-defaults-0.0.2 flock-0.3.1.8 free-5.0.2 ghc-boot-th-8.4.4 ghc-prim-0.5.2.0 \
  happy-1.19.9 hashable-1.2.7.0 haskell-src-exts-1.20.3 haskell-src-meta-0.8.0.3 hedis-0.10.10 hourglass-0.2.12 \
  hspec-2.5.5 hspec-core-2.5.5 hspec-discover-2.5.5 hspec-expectations-0.8.2 http-api-data-0.3.8.1 http-client-0.5.14 \
  http-client-tls-0.3.5.3 http-conduit-2.3.2 http-date-0.0.8 http-media-0.7.1.3 http-types-0.12.2 http2-1.6.4 \
  hworker-0.1.0.1 integer-gmp-1.0.2.0 integer-logarithms-1.0.2.2 invariant-0.5.1 iproute-1.7.7 kan-extensions-5.2 \
  keys-3.12.1 lens-4.16.1 lens-aeson-1.0.2 lifted-base-0.2.3.12 log-domain-0.12 math-functions-0.2.1.0 memory-0.14.18 \
  mersenne-random-pure64-0.2.2.0 mime-types-0.1.0.9 mmorph-1.1.2 monad-control-1.0.2.3 monad-logger-0.3.30 \
  monad-loops-0.4.3 mono-traversable-1.0.10.0 mono-traversable-instances-0.1.0.0 mtl-2.2.2 mutable-containers-0.3.4 \
  mwc-random-0.13.6.0 natural-transformation-0.4 network-2.6.3.6 network-byte-order-0.0.0.0 network-info-0.2.0.10 \
  network-uri-2.6.1.0 old-locale-1.0.0.7 old-time-1.1.0.3 optparse-applicative-0.14.3.0 parallel-3.2.2.0 \
  parsec-3.1.13.0 path-pieces-0.2.1 pem-0.2.4 persistent-2.8.2 persistent-postgresql-2.8.2.0 persistent-template-2.5.4 \
  pointed-5.0.1 postgresql-libpq-0.9.4.2 postgresql-simple-0.5.4.0 pretty-1.1.3.6 primitive-0.6.3.0 process-1.6.3.0 \
  profunctors-5.2.2 psqueues-0.2.7.0 quickcheck-io-0.2.0 random-1.1 random-extras-0.19 random-fu-0.2.7.0 \
  random-shuffle-0.0.4 random-source-0.3.0.6 reflection-2.1.4 resource-pool-0.2.3.2 resourcet-1.2.2 retry-0.7.7.0 \
  rts-1.0 rvar-0.2.0.3 safe-0.3.17 say-0.1.0.1 scanner-0.2 scientific-0.3.6.2 semigroupoids-5.2.2 semigroups-0.18.5 \
  servant-0.14.1 servant-server-0.14.1 setenv-0.1.1.3 silently-1.2.5 simple-sendfile-0.2.27 singleton-bool-0.1.4 \
  socks-0.5.6 split-0.2.3.3 stateref-0.3 stm-2.4.5.1 stm-chans-3.0.0.4 streaming-commons-0.2.1.0 strict-0.3.2 \
  string-conversions-0.4.0.1 syb-0.7 tagged-0.8.5 template-haskell-2.13.0.0 text-1.2.3.1 text-short-0.1.2 tf-random-0.5 \
  th-abstraction-0.2.10.0 th-expand-syns-0.4.4.0 th-extras-0.0.0.4 th-lift-0.7.11 th-lift-instances-0.1.11 \
  th-orphans-0.13.6 th-reify-many-0.1.8 time-1.8.0.2 time-locale-compat-0.1.1.5 tls-1.4.1 transformers-0.5.5.0 \
  transformers-base-0.4.5.2 transformers-compat-0.6.2 typed-process-0.2.3.0 unbounded-delays-0.1.1.0 unix-2.7.2.2 \
  unix-compat-0.5.1 unix-time-0.3.8 unliftio-0.2.9.0 unliftio-core-0.1.2.0 unordered-containers-0.2.9.0 \
  uri-bytestring-0.3.2.1 utf8-string-1.0.1.1 uuid-1.3.13 uuid-types-1.0.3 vault-0.3.1.2 vector-0.12.0.2 \
  vector-algorithms-0.7.0.4 vector-instances-3.4 vector-th-unbox-0.2.1.6 void-0.7.2 wai-3.2.1.2 wai-app-static-3.1.6.2 \
  wai-extra-3.0.24.3 wai-logger-2.3.2 warp-3.2.25 word8-0.1.3 x509-1.7.5 x509-store-1.6.7 x509-system-1.6.6 \
  x509-validation-1.6.11 zlib-0.6.2

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
