# Development Guides

## Table of Contents
- [xcode_cli_tools.md](/xcode_cli_tools.md)
- [psql.md](/psql.md)
- [pg_cron.md](/pg_cron.md)
- [ruby_build.md](/ruby_build.md)
- [pgbouncer.md](/pgbouncer.md)
- [rbenv.md](/rbenv.md)
- [homebrew_postgresql.md](/homebrew_postgresql.md)
- [macos.md](/macos.md)
- [pgbadger.md](/pgbadger.md)
- [graphviz.md](/graphviz.md)
- [bundler.md](/bundler.md)
- [ruby_pg_gem.md](/ruby_pg_gem.md)
- [ruby_on_rails.md](/ruby_on_rails.md)
- [ruby.md](/ruby.md)
- [postgresapp.md](/postgresapp.md)
- [homebrew.md](/homebrew.md)

## What is this?

This repo expands on the development environment installation instructions in the [Rideshare `README.md`](https://github.com/andyatkinson/rideshare).

This repo covers how to install and use additional software that readers work with.

If you spot bugs or have suggestions, please open an Issue or Pull Request!

## macOS

Installation guides are provided for macOS. If you want to add tips for other operating systems, please open an Issue or Pull Request.

## Conventions

Most of the programs here are *command line programs*, so you'll work in your terminal.

Each item has a Markdown file (`.md`) that can cover **Installation**, **Dependencies**, and possibly **Troubleshooting** or **Usage** sections.

The *Table of Contents* lists all items, and it's assembled from the Markdown files.

## Generating the Table of Contents

The **Table of Contents** is generated. Regenerate it by following these steps:

1. Run `ruby generate_toc.rb` from your terminal
1. Open the new TOC block at the top of this file in your editor.
1. Manually delete the old block below the new block, leaving only the new section.

When you're happy with the new TOC, commit the changes.

## Links

- Buy the book: [High Performance PostgreSQL for Rails](https://pragprog.com/titles/aapsql/high-performance-postgresql-for-rails/)
- Book devtalk.com forum page: <https://devtalk.com/books/high-performance-postgresql-for-rails>
- Rideshare: <https://github.com/andyatkinson/rideshare>
- Andrew Atkinson: <https://andyatkinson.com>
