FROM registry.fedoraproject.org/fedora:32 as builder
WORKDIR /tmp/src
COPY . .

FROM registry.fedoraproject.org/fedora:32 as runner
RUN dnf -y install tree
WORKDIR /tmp/run
# FAIL - can't resolve WORKDIR from builder!
# COPY --from=builder badger.sh badger.sh
# COPY --from=builder badger badger/
# SUCCESS - need absolute paths
COPY --from=builder /tmp/src/badger.sh badger.sh
COPY --from=builder /tmp/src/badger badger/

ENTRYPOINT ["./badger.sh"]
