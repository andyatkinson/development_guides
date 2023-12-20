# pspg Pager

📁 [Table of Contents](README.md)

### Prerequisites
psql

## Installation
```sh
brew install pspg
```

## Usage
This is really useful for viewing `pg_stat_statements` via psql which has a lot of data horizontally

Use Vim style navigation to move horizontally

Add the following to `~/.psqlrc`

```sh
vim ~/.psqlrc

\setenv PAGER pspg
\pset border 2
\pset linestyle unicode
```
