# Architecture and feature plan

## Deployment model

- GitHub Pages: static frontend distribution, HTTPS, version history.
- Single-file HTML: portable/offline fallback, independent of hosted deployment.
- PWA service worker: cache app shell after first visit; not a database and not background sync.
- Optional Supabase backend: candidate for online-only services after deployment configuration and security review.

## Service boundaries

| Capability | Frontend/local | Backend required |
|---|---|---|
| CW keyer, audio, Morse converter, decoder | Yes | No |
| Koch/adaptive/custom/daily practice | Yes | No |
| Local statistics and progress | Yes | No |
| JSON/CSV backup and restore | Yes | No |
| Automatic cross-device sync | No | Yes, with opt-in account/data model |
| ON AIR realtime keying | Client event handling | Realtime relay + abuse controls |
| Global Chat and presence | UI client | Realtime service + moderation/rate limits |
| CW Duel matchmaking and round sync | UI client | Server-authoritative match state |
| Weekly leaderboard | Local scoring | Shared database + anti-cheat/abuse controls |
| Community visitor/practice counters | No | Aggregation service with privacy-conscious analytics |
| Local AI QSO interpretation | Browser inference runtime + model | No remote AI API required, but model download/caching is required |
| QSO simulation | Local scripted engine | Optional local inference; no backend needed for scripted practice |

## Security rules

Never place Supabase service-role keys or any private secret in a browser application. Public anonymous keys are designed to be exposed only when Row Level Security (RLS) is enabled and policies are appropriate. A production live CW room needs message validation, event-size limits, rate limits, moderation/reporting, disconnect handling, and explicit indication when keying is being relayed to other people.

## Phased roadmap

1. **Deployable static/PWA foundation:** retain the app and standalone file; add offline shell caching and repository instructions.
2. **Core training parity:** complete Koch curriculum and checkpoint stars; sending assessment and timing feedback; full game mechanics; integrated QSO state machine; local stats across all training modules.
3. **Optional community backend:** realtime chat, ON AIR key events, Duel matchmaking, leaderboard, community counters, abuse controls.
4. **Optional AI and sync:** local model download/status/errors; opt-in authenticated cloud sync only if desired.
5. **QA:** mobile Safari/Chrome, desktop browsers, audio timing, keyboard/touch/hardware, offline reload, import/export, service worker updates.

## Design guardrails

- Keep Keyline's amber/green radio-workbench identity and “Built by Ms. Neil Bruce VU3EFZ” attribution.
- Do not remove current functions while adding modules.
- Keep the training interface compact and keyboard accessible.
- Default to local-only training; explain clearly when a feature shares data online.
- Make hosted and standalone versions available together.
