# Clavik Homebrew tap

Homebrew formulae for [Clavik](https://clavik.io) tools.

```bash
brew tap clavik-io/tap
brew install clavik
```

Or in one step:

```bash
brew install clavik-io/tap/clavik
```

Upgrade with `brew upgrade clavik`.

## What is here

| Formula | Description |
| --- | --- |
| `clavik` | Command-line client for the Clavik vault |

`clavik` is distributed as a prebuilt binary — the formula installs the release
artifact from [clavik-io/clavik-cli](https://github.com/clavik-io/clavik-cli/releases)
rather than building from source. Checksums in the formula are taken from the
`checksums.txt` published with each release.

Supported: macOS (Apple silicon and Intel) and Linux (x86-64 and arm64).
