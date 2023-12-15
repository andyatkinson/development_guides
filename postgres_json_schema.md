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

```sql
ALTER TABLE trips ADD CONSTRAINT data_is_valid CHECK (validate_json_schema(
'{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "type": "object",
  "properties": {
    "ride_details": {
      "type": "object",
      "properties": {
        "music_on": {
          "type": "boolean"
        },
        "bags_in_trunk": {
          "type": "integer",
          "minimum": 0
        },
        "water_offered": {
          "type": "boolean"
        }
      },
      "required": ["music_on", "bags_in_trunk", "water_offered"]
    }
  },
  "required": ["ride_details"]
}', data));
```

Make sure still works:
```sql
SELECT $$'{"ride_details":
{"bags_in_trunk": 1, "music_on": true,"water_offered": false}
}'::jsonb$$
AS json_string4 \gset

UPDATE trips AS t
SET data = c.json_string
from (VALUES
  (:json_string4, 1)
) AS c(json_string, trip_id)
WHERE c.trip_id = t.id;
```

Returns `UPDATE 1`.


Verify it doesn't work:

```sql
SELECT $$'{"ride_details_BREAK":
{"bags_in_trunk": 1, "music_on": true,"water_offered": false}
}'::jsonb$$
AS json_string5 \gset

UPDATE trips AS t
SET data = c.json_string
from (VALUES
  (:json_string5, 1)
) AS c(json_string, trip_id)
WHERE c.trip_id = t.id;
```

This update fails as expected, we see a violation of the check constraint.

```
ERROR:  new row for relation "trips" violates check constraint "data_is_valid"
DETAIL:  Failing row contains (1, 1, 20091, 2023-12-15 19:42:34.567532, 5,
    2023-12-15 19:41:34.579285,
    2023-12-15 19:41:34.579285,
    {"ride_details_BREAK": {"music_on": true, "bags_in_trunk": 1, "w...).
```
