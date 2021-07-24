#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  ALTER DATABASE $POSTGRES_DB SET "TimeZone" TO 'Europe/Moscow';
EOSQL
