# homebrew-tap

Homebrew tap for **permcheck** — a PreToolUse permission engine for [Claude Code](https://github.com/saleem-mirza/marketplace).

## Install

```sh
brew install saleem-mirza/tap/permcheck
```

or, equivalently:

```sh
brew tap saleem-mirza/tap
brew install permcheck
```

## What's in this repo

- `Formula/permcheck.rb` — the formula, regenerated on every permcheck release.
- Release assets `permcheck-darwin-arm64` / `permcheck-darwin-x64` — the prebuilt
  macOS binaries the formula downloads (no compiling, no source).

macOS only (Apple Silicon + Intel). Both the formula and the binaries are
published automatically by permcheck's release workflow.
