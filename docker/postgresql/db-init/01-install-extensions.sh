#!/bin/bash
set -e

echo -n "[*] Installing uuid-ossp extension..."

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$APP_DATABASE_NAME" <<-EOSQL
  create extension if not exists "uuid-ossp";
EOSQL




