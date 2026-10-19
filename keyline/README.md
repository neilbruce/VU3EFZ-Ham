# Keyline CW Trainer

**Built by Ms. Neil Bruce VU3EFZ**

Keyline is an independent CW/Morse practice application. This folder contains a hosted/PWA-oriented edition, a portable single-file HTML edition, documentation, and a starter schema for future online community features.

## Editions

- **Hosted/PWA edition:** [index.html](index.html) — intended for HTTPS hosting. The HTML is self-contained and embeds the app source.
- **Standalone edition:** [Keyline-Standalone.html](Keyline-Standalone.html) — a self-contained HTML file; download it and open locally in a recent browser.

## GitHub Pages deployment

This repository is a toolbox repo, so the existing radio-programming files at the repository root have been left in place. To serve Keyline through GitHub Pages, enable Pages in **Settings → Pages** and select a publishing source that includes the repository root (or configure a Pages workflow to publish the keyline/ directory). When the root is published as a project site, the expected path is:

https://neilbruce.github.io/VU3EFZ-Ham/keyline/

The app has not been browser/device/audio regression-tested after deployment; use the checklist in [docs/RELEASE_TEST_CHECKLIST.md](docs/RELEASE_TEST_CHECKLIST.md).

## Online services status

GitHub Pages is static hosting; it does not provide a database, authentication, live presence, moderation or realtime messaging. The supabase/ directory contains a starter schema only. Chat, ON AIR, Duel, and live leaderboards are **not implemented as functional online services** in this release. Do not enable public community services until authentication, row-level access policies, moderation, abuse reporting, rate limits, data retention and consent have been reviewed.

## Privacy and portability

- Local training does not require an account.
- Progress is stored in the current browser/device and is not automatically synced.
- Export backups regularly and transfer/import them between devices.
- Never place private API keys or service-role secrets in frontend files or GitHub Pages.

## Inspiration and licensing

Feature planning referenced the public README of [ZP5DXS/morse-practice](https://github.com/ZP5DXS/morse-practice#readme). This package is an independent implementation and does not bundle that project's source or assets. Respect that project's MIT licence and attribution requirements if code is separately reused.
