FROM registry.fedoraproject.org/fedora:32 as builder
RUN dnf install -y tree
WORKDIR /tmp/src
COPY badger/* 1/
COPY bad* 2/
COPY badger 3/badger/

ENTRYPOINT ["2/badger.sh"]
