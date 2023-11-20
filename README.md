# Development Guides

## Table of Contents
- [xcode_cli_tools.md](/xcode_cli_tools.md)
- [psql.md](/psql.md)
- [ruby_build.md](/ruby_build.md)
- [pgbouncer.md](/pgbouncer.md)
- [rbenv.md](/rbenv.md)
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

This repo expands on the development environment instructions for [Rideshare](https://github.com/andyatkinson/rideshare),
which is the application for the book [High Performance PostgreSQL for Rails](https://pragprog.com/titles/aapsql/high-performance-postgresql-for-rails/) set up their local development environment.

If you spot bugs or have suggestions, please open an Issue or Pull Request!


## macOS

Installation guides are provided for macOS. If you want to add tips for additional operating systems, please open an issue or pull request.


## Conventions Used Here

Most of the programs here are *command line programs*, so you'll work in your terminal.

Each item has it's own Markdown file (`.md`) covering *Installation*, shows dependencies, and might have some troubleshooting tips.

The *Table of Contents* lists all items, and it's assembled from the Markdown files.

## Table of Contents

The Table of Contents is generated. Regenerate it by running: `ruby generate_toc.rb` from your terminal.

After regenerating, a duplicate TOC block is placed on the top. Delete the old block, and then commit the new one.
