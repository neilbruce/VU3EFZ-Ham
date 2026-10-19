# Keyline CW Trainer

**Built by Ms. Neil Bruce VU3EFZ**

Keyline is an independent, local-first CW/Morse trainer with a hosted/PWA-oriented edition and a standalone HTML edition.

## Open Keyline

- [Hosted app](https://neilbruce.github.io/VU3EFZ-Ham/keyline/)
- [Project files](./)
- [Download/open standalone HTML](Keyline-Standalone.html)
- [Feature status and limitations](docs/FEATURE_MATRIX.md)
- [Architecture and next steps](docs/ARCHITECTURE.md)
- [Release test checklist](docs/RELEASE_TEST_CHECKLIST.md)

## Studio+ highlights

The integrated experience combines Keyline's course and listening tools with CW Racer Learn/Sprint/speed ladder; five local arcade practice modes; a scripted Basic/POTA/SKCC/contest QSO bot; mistake-weighted practice; daily drills; operator profile, local XP/streaks/achievements; themes and accessibility options; bilingual English/Spanish Studio+ labels; modular workspace layout; and local data backup/restore.

## Public deployment

GitHub Pages is deployed by [the workflow](../.github/workflows/deploy-pages.yml). This repo publishes its root, so the hosted app is available under the keyline/ project path. Follow the [Actions tab](https://github.com/neilbruce/VU3EFZ-Ham/actions) if a new deployment is running.

The standalone edition embeds the app code and runs locally in a modern browser. It does not require a login or cloud account.

## Online features and security

The community panel can connect to an operator-managed Supabase project, but **no live shared backend is configured by this release**. Global Chat and ON AIR have client-side paths that need the migration and carefully scoped policies; Duel matchmaking is incomplete; shared score submission, verified identity/badges, community counters, local AI and cloud sync are not implemented.

The provided Supabase migration is a safe-by-default schema starter with Row Level Security enabled and no permissive public policies. It is not a ready public community server. Never put a service-role secret in the frontend. For a public service, add abuse prevention, moderation/reporting, rate limits, retention rules and clear consent for shared callsigns/messages/key events.

## Testing status

The JavaScript syntax and static ID checks were run on the local integrated build. A headless browser run did not complete in the build environment, and full browser/device/audio regression testing remains outstanding. Please test the actual hosted build on desktop, phone and tablet before relying on timing or audio-sensitive features.

## Reference

Feature planning used the public README of [ZP5DXS/morse-practice](https://github.com/ZP5DXS/morse-practice#readme) as a scope reference. Keyline remains an independent implementation and does not bundle that project's source or artwork.
