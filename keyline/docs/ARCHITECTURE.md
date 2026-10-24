# Architecture and feature plan

## Current structure

- **Core Keyline page:** a self-contained HTML app containing the existing training desk and expanded local course/practice modules.
- **Studio+:** an additive self-contained JavaScript feature layer injected after the core app is loaded. The hosted and standalone editions each embed the compressed Studio+ source, so the local copy works without fetching a JavaScript bundle.
- **Hosted/PWA:** GitHub Pages delivery with a versioned service-worker app-shell cache.
- **Standalone:** single-file HTML download; it does not require a host or account for local practice.
- **Optional community connector:** user-supplied Supabase project URL and public anon key with local opt-in. No credentials/backend are preconfigured.
- **Supabase migration:** schema starter with RLS enabled and no permissive public policies. This is not a provisioned production backend.

## Responsive layout

The hosted and standalone wrappers inject a responsive layout layer into the core HTML before booting Studio+. On wide viewports above 1280 CSS pixels, the core training desk and Studio+ align at the top in a two-column workbench; at 1280 CSS pixels and below, they stack into one centred, phone-friendly column. The keyer transcript and Studio displays wrap long content, and nested cards/rows are constrained to the panel width. Service-worker cache version v4 invalidates older cached app shells when the updated release deploys.

## Progress durability

- The synchronous app data remains in the existing localStorage keys so current code can initialise without refactoring every module.
- Before the inner app document is written, the hosted/standalone bootstrap checks an IndexedDB recovery store and restores only missing Keyline-managed entries. It migrates recognised versioned store names only when the current target is absent.
- A shim is injected before the app scripts run; it mirrors writes to IndexedDB and requests persistent browser storage on a best-effort basis.
- Manual JSON backup/restore includes the core trainer, settings, custom codebook, transmission history, expanded practice, and Studio+ profile data.
- This is same-origin/same-browser recovery, not cloud sync. A user-cleared browser profile/site data, private browsing, another device/browser, or file-origin storage limitations may still require a manually exported backup. Cookies are deliberately not used as the main progress store.

## Device-aware control layout

A lightweight device-layout helper measures the current CSS viewport and applies mobile/tablet/desktop classes to the document root. It locates the six core practice modes (Group, Word, Call, QSO, Text, Echo) by their accessible button labels, groups them into a responsive toolbar, and lets CSS reflow them without changing their actions or state. The current breakpoints are mobile at 600 CSS px or less, tablet at 601–1100, and desktop above 1100. Resize and orientation-change events rerun detection so the interface adapts when a device rotates or a browser window changes width. Related Fast Unlock and QRM controls are only styled as a separate group when they do not share the same toolbar ancestor, to avoid accidentally overriding the mode grid.

## Service boundaries

| Capability | Local | Backend needed |
|---|---|---|
| Core CW engine, text conversion, audio playback and receive tools | Yes | No |
| Progressive/course, adaptive listening, custom lessons, daily drill | Yes | No |
| CW Racer Learn/Sprint/speed ladder and personal scores | Yes | No |
| Five local arcade practice modes | Yes | No |
| Scripted QSO scenarios and local coaching hints | Yes | No |
| XP, streaks, local achievements, themes, layout and backup | Yes | No |
| Automatic cross-device sync | No | Optional authenticated sync service plus consent/conflict handling |
| Global chat | Client connector present | Shared storage, access policy, moderation/rate limits |
| ON AIR key events | Client polling/posting path present | Shared event table, authorization, validation/rate limit and relay testing |
| Full CW Duel | Not complete | Server-authoritative match lifecycle/state, reconnect, scoring and anti-cheat |
| Weekly shared leaderboard | Board read path present | Server-side score submission, validation and anti-cheat |
| Community totals / verified badges | Not complete | Aggregation service, identity/consent policy |
| Local AI QSO | Not included | Browser inference runtime and model download/caching, but no remote API needed if all inference stays local |

## Security rules

Never place a Supabase service-role key or any private secret in a browser application. A public anon key may be used only with appropriate Row Level Security (RLS), narrowly scoped policies, input constraints, rate limits and an abuse response plan. For shared keying, tell operators when their callsign and dits/dahs are broadcast; handle disconnect/reconnect and validate event durations.

## Phased roadmap

1. **Static/PWA foundation:** retain local core and standalone HTML; cache the current app shell on the first online visit.
2. **Core practice parity:** validate course checkpoint/star scoring and complete game mechanics; unify progress/statistics across core and Studio+ modules.
3. **Optional community backend:** implement moderated chat, an ON AIR relay, full Duel, safe score submissions and community counters. Test with multiple independent accounts/operators.
4. **Optional local AI and sync:** browser model readiness/size/error states, opt-in authenticated cloud sync and conflict handling.
5. **Release QA:** desktop and mobile browsers, audio timing, mic permissions, hardware input, offline reload, import/export, service-worker upgrades and reconnect behavior.

## Design guardrails

- Preserve Keyline's radio-workbench visual identity and attribution “Built by Ms. Neil Bruce VU3EFZ”.
- Add modules without removing current modes.
- Keep local-only training the default.
- Make any network sharing explicit and understandable before a call sign, message, or key event leaves the device.
