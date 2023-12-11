# pg_cron

📁 [Table of Contents](README.md)

### Prerequisites

- macOS
- [Xcode CLI Tools](xcode_cli_tools.md)

### Remove any other installations

Remove Homebrew installed versions since we're recommending [PostgresApp](/postgresapp).

These aren't all strictly necessary, but were part of my cleanup.

```sh
brew uninstall postgresql@15
brew uninstall postgresql@16
brew uninstall postgresql
brew uninstall libpq
```

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
git clone https://github.com/citusdata/pg_cron.git
cd pg_cron
make && make install
```

If you run into trouble with `make install`, see [Troubleshooting](#Troubleshooting) below.

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
shared_preload_libraries = 'pg_cron'

pg_ctl restart

psql

\c postgres

create extension pg_cron;
```

## Usage

Schedule a job

```sql
SELECT cron.schedule_in_database(
  job_name:='Manual rideshare.trips Vacuum',
  schedule:='0 10 * * *',
  command:='VACUUM (ANALYZE) rideshare.trips',
  database:='rideshare_development',
  username:='postgres'
);
```

View scheduled jobs

```sql
SELECT * FROM cron.job ORDER BY jobid;

-- See jobs that have ran
SELECT * FROM cron.job_run_details;
```

## Integration

pg_cron is integrated with [andyatkinson/pghero](https://github.com/andyatkinson/pghero)

## Troubleshooting

```sh
pg_cron.dylib: Operation not permitted
```
See: <https://github.com/PostgresApp/PostgresApp/issues/719>

> I figured out how to do it:
> 1. Go to System Settings -> Privacy & Security -> App Management
> 2. Allow Terminal (or iTerm2) to "update or delete other applications"

Once I did this, I could run `make install` as expected.
