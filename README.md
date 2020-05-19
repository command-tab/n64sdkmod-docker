# n64sdkmod-docker

A Docker build of [n64sdkmod](https://github.com/CrashOveride95/n64sdkmod)

## Build

1. Install Docker, e.g. `brew cask install docker` on macOS
2. `docker build --tag n64sdkmod-docker:1.0 .`

## Run

`docker run --volume "$(pwd):/tmp" n64sdkmod-docker:1.0 bash -c 'export ROOT=/etc/n64; export PATH=/usr/local/n64chain/bin:$PATH; cd /tmp; make'`
