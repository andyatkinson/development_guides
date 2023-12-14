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

# Add extension name individually, or to existing comma-separated list
shared_preload_libraries = 'pg_hint_plan'

pg_ctl restart

psql -U postgres # Superuser

\c rideshare_development

# needed for the "hints" table <https://github.com/ossc-db/pg_hint_plan/blob/master/docs/hint_table.md>
CREATE EXTENSION pg_hint_plan;

LOAD 'pg_hint_plan';
```

For issues, refer to the extension installation instructions: <https://github.com/ossc-db/pg_hint_plan/blob/master/docs/installation.md>

## Usage

Use pg_hint_plan identifiers like "SeqScan(tablename)"

Review the [full list of hints](https://github.com/ossc-db/pg_hint_plan/blob/master/docs/hint_list.md)


## Integration

pg_hint_plan is integrated with Active Record using the “optimizer_hints” method
