# `pg` Ruby gem

📁 [Table of Contents](README.md)

## Description

Pg is the Ruby interface to the PostgreSQL RDBMS.

### Steps

This will be installed as a dependency of the Rails app, that works with PostgreSQL.

### Extra help

<https://github.com/ged/ruby-pg#how-to-install>

These instructions are from that project:

You may need to specify the path to the 'pg_config' program installed with Postgres:

```sh
gem install pg -- --with-pg-config=<path to pg_config>
```

If you're installing via Bundler, you can provide compile hints like so:

```sh
bundle config build.pg --with-pg-config=<path to pg_config>
```

For example, for Postgres.app on macOS:

```sh
bundle config build.pg \
  --with-pg-config=/Applications/Postgres.app/Contents/Versions/latest/bin/pg_config
```

### Troubleshooting

Run `pg_config` to learn about your installation.
