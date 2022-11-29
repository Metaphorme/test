FROM alpine:3.12


LABEL org.opencontainers.image.authors="Metaphorme" \
      org.opencontainers.image.documentation="https://github.com/Metaphorme/Rosetta2Go"

ARG DEBIAN_FRONTEND=noninteractive

ENV PATH=$PATH:/rosetta/source/bin:/usr/local/openmpi/bin \
    LIB_LIBRARY_PATH=/rosetta/source/external/lib:$LIB_LIBRARY_PATH \
    LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/openmpi/lib \
    OMPI_ALLOW_RUN_AS_ROOT=1 \
    OMPI_ALLOW_RUN_AS_ROOT_CONFIRM=1

RUN apk --update add --no-cache bash \
