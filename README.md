# Homebrew Tap (Halo Click)

> Public Homebrew tap for Halo Click, Mark's macOS radial browser picker.

**Status:** Active

## What it does
This repo is the public Homebrew tap that ships the `halo-click` cask. People install Halo Click with Homebrew; the cask downloads the signed DMG from haloclick.app. App source lives in the private repo `TimechainStrategy/halo_click`.

## Where it runs
| What | URL |
|---|---|
| Public website | https://haloclick.app |
| Production app | This tap — `brew install --cask timechainstrategy/tap/halo-click` (cask URL e.g. https://haloclick.app/download/1.4.0) |
| Staging | None |
| App stores | None |

## Third-party services
| Service | Used for | Account |
|---|---|---|
| Homebrew | Tap and cask distribution | No account |
| GitHub | Hosts this public tap repo | Bitwarden: TBD |
| Vercel | Hosts the DMG the cask downloads (haloclick.app / Vercel Blob) | Bitwarden: TBD |

## Repo layout
- `Casks/` — Homebrew cask formulas; currently `halo-click.rb`

## Running locally
```bash
brew tap timechainstrategy/tap
brew audit --cask --strict halo-click
brew style
# Install from this checkout:
brew install --cask --force ./Casks/halo-click.rb
```

## Deploying
The cask is updated automatically by halo_click's `scripts/release.sh --publish`, which Mark runs on his Mac. That script bumps `version` / `sha256` in `Casks/halo-click.rb` and pushes straight to `main` here. There is no CI on this repo; production is the tip of `main`.

## Status and next up
See [STATUS.md](STATUS.md).

## Owner
Mark Kinney. Maintained by the "Halo Click · Dev" Grok Bot.
