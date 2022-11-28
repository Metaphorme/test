FROM alpine:3.12


LABEL org.opencontainers.image.authors="Metaphorme" \
      org.opencontainers.image.documentation="https://github.com/Metaphorme/Rosetta2Go"

ARG DEBIAN_FRONTEND=noninteractive

ENV PATH=/rosetta/source/bin:$PATH \
    LIB_LIBRARY_PATH=/rosetta/source/external/lib:$LIB_LIBRARY_PATH \
    PATH=$PATH:/usr/local/openmpi/bin \
    LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/openmpi/lib \
    OMPI_ALLOW_RUN_AS_ROOT=1 \
    OMPI_ALLOW_RUN_AS_ROOT_CONFIRM=1

RUN echo $DEBIAN_FRONTEND \
    echo $PATH