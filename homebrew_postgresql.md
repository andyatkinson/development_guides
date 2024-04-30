# Homebrew PostgreSQL

📁 [Table of Contents](README.md)

## Homebrew PostgreSQL

Alternative way to install PostgreSQL.

## Tips

Add a `postgres`/`postgres` superuser if one does not exist.

Do that by running `createuser -s postgres --pwprompt` and provide `postgres` as the password.

## Troubleshooting wrong version

This feedback is courtesy of <https://github.com/britaumich>, on modifying their version of Homebrew PostgreSQL.

> OK, I am running PostgreSQL 16 now. For that I had to run:

```sh
brew services stop postgresql@14
brew services start postgresql@16
```

Then `sh db/scripts/bulk_load.sh` runs without errors.

But `postgresql@16` server created a new data directory and all my databases were not there, obviously.

So to move my databases from postgres 14 to 16 server I had to run the following commands (just in case you are interested):

```sh
brew services stop postgresql@14
brew services stop postgresql@16

# Notes:
# -b, -B - old and new binaries; -d, -D - old and new databases
#
/opt/homebrew/opt/postgresql@16/bin/pg_upgrade \
    -b /opt/homebrew/opt/postgresql@14/bin \
    -d /opt/homebrew/var/postgresql@14 \
    -B /opt/homebrew/opt/postgresql@16/bin \
    -D /opt/homebrew/var/postgresql@16
```

Then:
```sh
brew services start postgresql@16
```

Credit: <https://ivdl.co.za/2023/11/07/upgrading-from-postgresql-15-to-16-installed-with-homebrew-on-an-apple-silicon-mac>
