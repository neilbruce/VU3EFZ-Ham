# Keyline CW Trainer

**Built by Ms. Neil Bruce VU3EFZ**

Keyline is an independent CW/Morse practice application. This folder contains a hosted/PWA-oriented edition, a portable single-file HTML edition, documentation, and a starter schema for future online community features.

## Editions

- **Hosted/PWA edition:** [index.html](index.html) — intended for HTTPS hosting. The HTML is self-contained and embeds the app source.
- **Standalone edition:** [Keyline-Standalone.html](Keyline-Standalone.html) — a self-contained HTML file; download it and open locally in a recent browser.

## GitHub Pages deployment

The repository includes the workflow at [deploy-pages.yml](../.github/workflows/deploy-pages.yml). In repository **Settings → Pages**, select **GitHub Actions** as the publishing source. The workflow deploys the repository root on pushes to main; the expected hosted app path is:

https://neilbruce.github.io/VU3EFZ-Ham/keyline/

The URL is live only after Pages is enabled and the workflow succeeds. Follow the deployment status in the [Actions tab](https://github.com/neilbruce/VU3EFZ-Ham/actions).

## Online services status

GitHub Pages is static hosting; it does not provide a database, authentication, live presence, moderation or realtime messaging. The supabase/ directory contains a starter schema only. Chat, ON AIR, Duel, and live leaderboards are **not implemented as functional online services** in this release. Do not enable public community services until authentication, row-level access policies, moderation, abuse reporting, rate limits, data retention and consent have been reviewed.

## Privacy and portability

- Local training does not require an account.
- Progress is stored in the current browser/device and is not automatically synced.
- Export backups regularly and transfer/import them between devices.
- Never place private API keys or service-role secrets in frontend files or GitHub Pages.

## Testing status

JavaScript syntax and static duplicate-ID checks passed in the build workspace. Full browser/device/audio regression testing has not been completed. Use the checklist in [docs/RELEASE_TEST_CHECKLIST.md](docs/RELEASE_TEST_CHECKLIST.md) before relying on a deployed build.

## Inspiration and licensing

Feature planning referenced the public README of [ZP5DXS/morse-practice](https://github.com/ZP5DXS/morse-practice#readme). This package is an independent implementation and does not bundle that project's source or assets. Respect that project's MIT licence and attribution requirements if code is separately reused.
