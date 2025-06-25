#!/bin/bash
set -e

script_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
pushd "$script_path" >/dev/null

podman stop podman-local
