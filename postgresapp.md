# PostgresAPP

📁 [Table of Contents](README.md)

## Installation

### Description

PostgreSQL packaged as a Mac OS app.

Additional PostgreSQL Client Applications [`psql`](https://www.postgresql.org/docs/current/reference-client.html).

### Prerequisites

Mac OS

### Steps

Follow the installation instructions on <https://postgresapp.com>.

Configure System Path.

```sh
sudo mkdir -p /etc/paths.d &&
echo /Applications/Postgres.app/Contents/Versions/latest/bin | sudo tee /etc/paths.d/postgresapp
```

### Documentation

Refer to <https://postgresapp.com/documentation/> for PostgresApp Documentation.

### Success Confirmation

In Mac OS, in the rop right of the OS apps are visible called Menu Bar Apps.

Refer to Mac OS [Menu Bar Support docs](https://support.apple.com/guide/mac-help/whats-in-the-menu-bar-mchlp1446/mac#:~:text=The%20menu%20bar%20runs%20along,the%20top%20of%20the%20screen.) for more information.

PostgresApp runs on startup by default as a Menu Bar app.

New "Servers" can be created using the "+" icon in PostgresApp.

For example, you can create Servers for PostgreSQL 14 and PostgreSQL 15.

These are the open source community distributions of PostgreSQL compiled for Mac OS.

Confirm the installation of the client application programs.


```sh
psql --version

pg_dump --version
```

## Usage

### Stopping and Starting Servers

Open the PostgresApp Menu Bar app, and select your server.

For your server, you can select Start and Stop as actions.

PostgreSQL may not be running by default when Mac OS starts. Click "Start" to start the server.

Refer to <https://postgresapp.com/documentation/> for PostgresApp Documentation.

### PostgreSQL Config File

1. Open the PostgresApp Menu Bar app, and select your server.
1. Select your Server
1. Find Config File and select "Show"

This will open a Mac OS Finder window with the `postgresql.log` file selected.


### PostgreSQL Log File

### Copy Path to File Using Finder

1. Select a file in a Mac OS Finder window
1. With the Option key held, right-click the file.
1. Select Copy ... as Pathname

For example, for the `postgresql.conf` file selected in Finder.

The following path will by copied to your clipboard.

```sh
/Users/andy/Library/Application Support/Postgres/var-15/postgresql.conf
```

To open this file from the command line due to spaces in the paths, surround the file name with quotes.

For example:

```sh
vim "/Users/andy/Library/Application Support/Postgres/var-15/postgresql.conf"
```
