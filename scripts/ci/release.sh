#!/usr/bin/env bash

set -euo pipefail

rm .git/hooks/* || true
sg release
