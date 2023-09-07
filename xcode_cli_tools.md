# Xcode Command Line Tools

📁 [Table of Contents](README.md)

## Description

Xcode Command Line Tools

Not installed by default on Mac OS, but are needed for installation of any software that is compiled.

## Steps

Trigger manually:

```sh
sudo xcode-select --install
```

Can be triggered manually or will be started during the Homebrew installation.

Add to System Path

From the [mac.install.guide](https://mac.install.guide/homebrew/3.html)

```
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```
