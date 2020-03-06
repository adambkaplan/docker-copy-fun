IMAGE ?= copyfun
ENGINE ?= podman

.PHONY: all build build-glob run run-glob run-relpath

all: build

build: build-glob build-relpath

run: run-glob run-relpath

build-glob:
	$(ENGINE) build -t $(IMAGE):glob glob

build-relpath:
	$(ENGINE) build -t $(IMAGE):relpath relpath

run-glob:
	$(ENGINE) run -it $(IMAGE):glob

run-relpath:
	$(ENGINE) run -it $(IMAGE):relpath
