# postgres-json-schema

📁 [Table of Contents](README.md)


## Compile from source
```sh
git clone git@github.com:gavinwahl/postgres-json-schema.git
cd postgres-json-schema
make install
psql -U postgres -d rideshare_development
```

## Usage
```sql
CREATE EXTENSION "postgres-json-schema"
WITH SCHEMA rideshare;
```
