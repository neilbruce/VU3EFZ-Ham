# Keyline CW Trainer

**Built by Ms. Neil Bruce VU3EFZ**

Keyline is an independent CW/Morse practice application. This folder contains a GitHub Pages-ready hosted edition, a standalone HTML edition, documentation, and a starter database schema for future online community features.

## Editions

- **Hosted/PWA edition:** [`index.html`](index.html) — host the `keyline/` folder on GitHub Pages or serve it from a static web host. The service worker caches the app shell after the first visit.
- **Standalone edition:** [`Keyline-Standalone.html`](Keyline-Standalone.html) — download and open locally in a modern browser; no hosting needed.
- **Expanded source copy:** [`Keyline-Expanded-Source.html`](Keyline-Expanded-Source.html) — retained as an additional rollback/source copy.

## GitHub Pages deployment

This repository is a toolbox repo, so the recommended deployment is **Settings → Pages** only if the project should be published from this repo’s configured Pages source, or use a workflow/static host configured to publish the `keyline/` directory. GitHub Pages does not automatically publish a subdirectory of a project repository as the site root. To make this folder a project site, configure a Pages workflow to publish the folder's contents (or copy this folder's contents to the publishing root of a dedicated Pages branch/repository).

## Online services status

GitHub Pages is static hosting; it does not provide a database, authentication, live presence, moderation or realtime messaging. The `supabase/` directory contains an initial schema/design only. Chat, ON AIR, Duel, and live leaderboards are **not implemented as functional online services** in this release. Do not enable public community services until authentication, row-level access policies, moderation, abuse reporting, rate limits, data retention and consent have been reviewed.

## Privacy and portability

- Local training does not require an account.
- Progress is stored in the current browser/device and is not automatically synced.
- Export backups regularly and transfer/import them between devices.
- Never place private API keys or service-role secrets in frontend files or GitHub Pages.

## Testing status

The source passed JavaScript syntax checks and a static duplicate-ID check in the build workspace. Full browser/device/audio regression testing has not been completed. Please test on desktop, phone and tablet before relying on the deployed build.

## Inspiration and licensing

Feature planning referenced the public README of [ZP5DXS/morse-practice](https://github.com/ZP5DXS/morse-practice#readme). This package is an independent implementation and does not bundle that project's source or assets. Respect its MIT licence and attribution requirements if code is separately reused.
