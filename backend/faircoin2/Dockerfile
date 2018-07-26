FROM alpine:3.6
RUN apk --no-cache add autoconf
RUN apk --no-cache add automake
RUN apk --no-cache add build-base
RUN apk --no-cache add openssl

ENV BERKELEYDB_VERSION=db-4.8.30.NC
ENV BERKELEYDB_PREFIX=/opt/${BERKELEYDB_VERSION}

RUN wget http://download.oracle.com/berkeley-db/${BERKELEYDB_VERSION}.tar.gz
RUN tar -xzf *.tar.gz
RUN sed s/__atomic_compare_exchange/__atomic_compare_exchange_db/g -i ${BERKELEYDB_VERSION}/dbinc/atomic.h
RUN mkdir -p ${BERKELEYDB_PREFIX}

WORKDIR /${BERKELEYDB_VERSION}/build_unix

RUN ../dist/configure --enable-cxx --disable-shared --with-pic --prefix=${BERKELEYDB_PREFIX}
RUN make -j4
RUN make install
RUN rm -rf ${BERKELEYDB_PREFIX}/docs

RUN apk --no-cache add \
      autoconf \
      automake \
      boost \
      boost-dev \
      boost-program_options \
      ca-certificates \
      db \
      db-dev \
      g++ \
      git \
      libevent \
      libevent-dev \
      libtool \
      make \
      openssl \
      openssl-dev \
      pkgconf \
      zeromq \
      zeromq-dev \
 && git clone --branch v2.0.1 https://github.com/faircoin/faircoin \
 && ( \
      cd faircoin \
 &&   ./autogen.sh \
 &&   ./configure LDFLAGS="-L${BERKELEYDB_PREFIX}/lib/" CPPFLAGS="-I${BERKELEYDB_PREFIX}/include/" \
         --disable-bench \
         --disable-tests \
         --with-incompatible-bdb \
         --without-fasito \
         --without-libs \
 &&   make -j2 \
 &&   make install \
 &&   strip /usr/local/bin/* \
    ) \
 && rm -fr faircoin \
 && apk --no-cache del \
      autoconf \
      automake \
      boost-dev \
      db-dev \
      g++ \
      git \
      libevent-dev \
      libtool \
      make \
      openssl-dev \
      pkgconf \
      zeromq-dev
ENV LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/lib:/usr/local/lib"

RUN mkdir /root/.faircoin2
WORKDIR /root/.faircoin2
EXPOSE 40404

ENTRYPOINT ["faircoind","-rpcallowip=0.0.0.0/0"]
