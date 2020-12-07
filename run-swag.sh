#!/bin/sh

set -e

exec 5>&1
output="$(swag init)"
[[ -z "$output" ]]
