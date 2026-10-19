# VU3EFZ-Ham

This repository collects tools for programming radio sets and practising CW.

## Keyline CW Trainer

**Built by Ms. Neil Bruce VU3EFZ**

A portable CW/Morse trainer with a hosted/PWA-oriented edition and a standalone single-file HTML edition.

- [Open Keyline project files](keyline/)
- [Hosted app entry point](keyline/index.html)
- [Download/open the standalone HTML edition](keyline/Keyline-Standalone.html)
- [Feature status and limitations](keyline/docs/FEATURE_MATRIX.md)
- [Release testing checklist](keyline/docs/RELEASE_TEST_CHECKLIST.md)

### Publish Keyline with GitHub Pages

A workflow is included at .github/workflows/deploy-pages.yml. In repository Settings → Pages, set the publishing source to **GitHub Actions**. The workflow then deploys the repository root on pushes to main; the expected app URL is:

https://neilbruce.github.io/VU3EFZ-Ham/keyline/

The URL is only live after Pages is enabled and the workflow succeeds.

The training app is designed to work locally. Live community services (ON AIR relay, chat, duel matchmaking, shared leaderboard and cross-device sync) are not enabled in this release. See the [backend notes](keyline/supabase/README.md) before developing online features.
