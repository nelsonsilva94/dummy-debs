#!/bin/bash
set -e

script_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
pushd "$script_path" >/dev/null

podman run --rm -d --name podman-local --systemd=true --privileged ghcr.io/hifis-net/ubuntu-systemd:22.04

podman cp $script_path/../ipmv-debs.zip podman-local:/