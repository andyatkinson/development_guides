# Bundler

📁 [Table of Contents](README.md)

## Description

Manage gems

### Prerequisites

[Ruby](ruby.md)

### Steps

```sh
gem install bundler
```

### Success Confirmation

```sh
bundle --version
```

```sh
bundle --version
Bundler version 2.4.5
```

## Usage

### Add Gem

Add the `fx` gem to a Bundler managed project

- Open `Gemfile`
- Add `gem 'fx'`
- From Terminal, run `bundle install`

`fx` should now be available.


### Native Gem build errors

Supply additional configuration to bundler for native gems that fail to build.

For example for the "nio4r" gem you may need to add the following configuration, and then `bundle install` again.

```sh
bundle config --local build.nio4r --with-cflags="-Wno-error=implicit-function-declaration"
```
