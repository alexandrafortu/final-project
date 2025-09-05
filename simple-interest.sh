#!/usr/bin/env bash
# Usage: ./simple-interest.sh PRINCIPAL RATE(%) TIME(years)
set -euo pipefail

if [ "${1-}" = "" ] || [ "${2-}" = "" ] || [ "${3-}" = "" ]; then
  echo "Usage: $0 PRINCIPAL RATE(%) TIME(years)" >&2
  exit 1
fi

P="$1"; R="$2"; T="$3"
awk -v P="$P" -v R="$R" -v T="$T" 'BEGIN {
  si = (P * R * T) / 100.0
  printf "Simple Interest: %.2f\n", si
}'
