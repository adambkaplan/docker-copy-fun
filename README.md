# Docker Copy Fun

Fun copying files in Docker builds.

## glob

Docker, podman, and buildah's usage of globs in `COPY` directives doesn't quite align with other linux tools.
When files are copied with a glob, the directory structure of the obtained files may not be preserved.

## relpath

In multistage builds, `COPY --from=<image> <src> <dest>` requires an absolute path for the `<src>` directory.
Using a relative path for the `<src>` directory will fail with docker, podman, or buildah, but will not fail with imagebuilder.
