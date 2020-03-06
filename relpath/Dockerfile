FROM registry.fedoraproject.org/fedora:32 as builder
WORKDIR /tmp/src
COPY . .

FROM registry.fedoraproject.org/fedora:32 as runner
WORKDIR /tmp/run
# FAIL - can't resolve WORKDIR from builder!
# COPY --from=builder mushroom/mushroom.txt mushroom/mushroom.txt
# SUCCESS - need absolute paths
COPY --from=builder /tmp/src/mushroom/mushroom.txt mushroom/mushroom.txt
COPY --from=builder /tmp/src/mushroom.sh mushroom.sh

ENTRYPOINT ["./mushroom.sh"]
