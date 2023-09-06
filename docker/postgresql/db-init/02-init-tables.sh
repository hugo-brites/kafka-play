#!/bin/bash
set -e

echo -n "[*] Creating messages table..."

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$APP_DATABASE_NAME" <<-EOSQL

create table  ${APP_DATABASE_SCHEMA}.messages (
    message_id uuid default uuid_generate_v4() primary key,
    message_datetime timestamptz,
    message_contents text,
    message_status varchar,
    --
    message_extractor varchar,
    message_extractor_datetime timestamptz,
    message_extractor_id varchar,
    --
    message_processing_1 varchar,
    message_processing_1_datetime timestamptz,
    message_processing_1_id varchar,
    --
    message_processing_2 varchar,
    message_processing_2_datetime timestamptz,
    message_processing_2_id varchar,
    --
    message_processing_3 varchar,
    message_processing_3_datetime timestamptz,
    message_processing_3_id varchar,
    --
    message_processing_4 varchar,
    message_processing_4_datetime timestamptz,
    message_processing_4_id varchar,
    --
    message_processing_5 varchar,
    message_processing_5_datetime timestamptz,
    message_processing_5_id varchar,
    --
    message_closer varchar,
    message_closer_datetime timestamptz,
    message_closer_id varchar,
    modification_datetime timestamptz
);

EOSQL

echo -n "[*] Creating generic messages table..."

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$APP_DATABASE_NAME" <<-EOSQL

create table  ${APP_DATABASE_SCHEMA}.generic_messages (
    message_id uuid default uuid_generate_v4() primary key,
    message_datetime timestamptz,
    message_topic varchar,
    message_client varchar,
    message_contents varchar

);

EOSQL



