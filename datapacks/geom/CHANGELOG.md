# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.1.0-alpha] "to show rippy"
### Added
- added autotorch functionality.
    - set\_torch\+predicate
        - -south_wall

### TODO
- TODO: perfect autotorch (make a block tag set that includes all the transparent things and don't place on them
  - tall\_grass (specifically top)
  - water, but also don't build on water!
  - ...
- TODO: See how/if we can combine the NBT now that we have it working

- TODO: migrate where appropriate to NBT storage structs
- TODO later: when things are called repeatedly they should probably go into a subfunction. naming scheme: ORIGINALFUNCNAME-SUBFUNCNAME - this didn't work well with set\_torch\_predicate, so let's watch for later opportunities.
