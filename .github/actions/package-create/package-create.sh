#!/bin/bash
set -euo pipefail

if [ -n "$1" ]; then
  BRANCH="$1"
else
  BRANCH="main"
fi

set -x
zarf package create --set BRANCH="$BRANCH" --set XSOAR_REPOSITORY=xsoar-registry.pan.dev/demisto/server --SET XSOAR_TAG=6.5.0.2459961-podman --set FUSE_REPOSITORY=soolaugust/fuse-device-plugin --set FUSE_TAG=v1.0 --confirm --skip-sbom
