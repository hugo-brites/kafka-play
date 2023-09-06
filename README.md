# kafka-play
Learn kafka


### Postgres Database

 Create a file `db.env` in the folder `docker/postgresql` based in the `db.env.sample` and fill in the placeholders
```properties
## Postgresql Configuration

POSTGRES_PASSWORD=<postgresql password>
POSTGRES_USER=postgres
#
APP_DATABASE_NAME=<app database name>
APP_DATABASE_SCHEMA=<app schema name>

# Flyway user
FLYWAY_USER=flyway
FLYWAY_PASSWORD=<flyway password>

# Application user
APP_USER=<application user>
APP_PASSWORD=<application user password>
```


