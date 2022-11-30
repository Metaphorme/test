FROM alpine:3.12


LABEL org.opencontainers.image.authors="Metaphorme" \
      org.opencontainers.image.documentation="https://github.com/Metaphorme/Rosetta2Go"

ARG DEBIAN_FRONTEND=noninteractive \
    FILE_SERVER='http://127.0.0.1:28294'

ENV LIB_LIBRARY_PATH=/rosetta/source/external/lib:$LIB_LIBRARY_PATH \
    LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/openmpi/lib \
    OMPI_ALLOW_RUN_AS_ROOT=1 \
    OMPI_ALLOW_RUN_AS_ROOT_CONFIRM=1

RUN set -x; apk --update add --no-cache curl \
    && curl -O $FILE_SERVER/LICENSE
