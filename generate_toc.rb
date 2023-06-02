#!/usr/bin/env ruby

toc = %{# Installation Guides

## Table of Contents
}

%x(find . -maxdepth 1 -type f | sed 's|^\./||').split.each do |filename|
  next if filename =~ /README/
  next if filename =~ /generate_toc/

  toc << "- [#{filename}](/#{filename})\n"
end

toc << "\n\n"

README = "README.md"

# prepend the TOC
original = IO.read README
IO.write README, toc + original
