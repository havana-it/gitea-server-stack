#!/bin/bash
# wait-for-postgres.sh

set -e

#host="$1"
cmd="$1"
shift

until psql -h "localhost" -U "postgres" -c '\l' >/dev/null 2>&1; do
  sleep 1
done

psql -U postgres -c "$cmd" "$@"
