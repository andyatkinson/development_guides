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
which is the application readers use in the book [High Performance PostgreSQL for Rails](https://pragprog.com/titles/aapsql/high-performance-postgresql-for-rails/).

Besides expanding on the instructions, this repo covers additional software that readers can install and work with in later chapters, that aren't covered in the other places.

Besides installation instructions, additional tips and tricks can be added for each file.

If you spot bugs or have suggestions, please open an Issue or Pull Request!


## macOS

Installation guides are provided for macOS. If you want to add new tips for documentation for more operating systems, please open an Issue or Pull Request.


## Conventions Used Here

Most of the programs here are *command line programs*, so you'll work in your terminal.

Each item has it's own Markdown file (`.md`) covering *Installation*, shows dependencies, and might have some troubleshooting tips.

The *Table of Contents* lists all items, and it's assembled from the Markdown files.

## Table of Contents

The Table of Contents is generated. Regenerate it by running: `ruby generate_toc.rb` from your terminal.

After regenerating, a duplicate TOC block is placed on the top. Delete the old block, and then commit the new one.
