# pg_hint_plan

📁 [Table of Contents](README.md)

### Prerequisites

- macOS
- [Xcode CLI Tools](xcode_cli_tools.md)

## Use PostgresApp versions

```sh
which pg_config
/Applications/Postgres.app/Contents/Versions/latest/bin/pg_config

pg_config --includedir
/Applications/Postgres.app/Contents/Versions/16/include
```

## Compile from source

With those in place, you're ready

```sh
git clone git@github.com:ossc-db/pg_hint_plan.git
cd pg_hint_plan
make && make install
```


## Configuration
Set `PGDATA`

```sh
export PGDATA="$(psql $DATABASE_URL \
    -c 'SHOW data_directory' \
    --tuples-only | sed 's/^[ \t]*//')"
echo "Value set for PGDATA: $PGDATA"

echo "You can now run pg_ctl without supplying the data directory:"
echo "pg_ctl restart|reload"
```

```sh
psql -U postgres -c 'SHOW config_file'

# Add extension name individually, or to existing comm-separated list
shared_preload_libraries = 'pg_hint_plan'

pg_ctl restart

psql

\c postgres

create extension pg_hint_plan;
```

## Usage



## Integration


