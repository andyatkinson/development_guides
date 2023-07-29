# pgbouncer

📁 [Table of Contents](README.md)

## Installation

### Description

Open source connection pooler for PostgreSQL

### Prerequisites

Mac OS, Homebrew

### Steps

```sh
brew install pgbouncer
```

## Usage

Find the `.ini` config file:

```sh
brew info pgbouncer

/usr/local/etc/pgbouncer.ini
```

Replace the value for `[pgbouncer]` in the ini config file.

Add a admin user to the `/usr/local/etc/userlist.txt` configuration using a role and password you've already set up.

For example: `"app_user" "insecurepwd"` as a role and password.

Run it in a Terminal window to see log output:

```sh
pgbouncer -R /usr/local/etc/pgbouncer.ini
```


