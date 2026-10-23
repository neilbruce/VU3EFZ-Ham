# Keyline feature status matrix

Keyline is an independent CW/Morse trainer that combines the existing Keyline training desk with a Studio+ practice workspace. Feature coverage is additive; this release is not a one-for-one clone of ZP5DXS/morse-practice.

## Available locally

| Area | Included in the published build | Status / note |
|---|---|---|
| Core CW practice | Koch and cumulative listening practice, character groups, words, callsigns, text and echo practice | Existing Keyline modes retained |
| Progressive course | Koch-style lesson chooser, cumulative lessons, unlocked lesson progress and mastery threshold | Local prototype; test all lesson checkpoints before relying on it as a full 40-lesson curriculum |
| Adaptive listening | Mistake-weighted character practice and weak-character statistics | Stored on this browser/device |
| Custom and daily practice | User text lessons split by word/character, daily warm-up/drill, send practice | Local only |
| CW Racer | Untimed Learn, timed Sprint, continuous speed challenge, mixed/letter/number/word/callsign sets, WPM selection, score, accuracy and personal records | Local records, not a global ranking |
| Arcade games | Invaders RX-copy, Flappy-style signal gates, sending rhythm/timing lab, Battleship-style grid-coordinate copy, speed ladder | Local game modes; full gameplay and device regression QA remains outstanding |
| QSO practice | Offline scripted QSO state machine with Basic, POTA, SKCC and contest scenarios; operator styles, QRM option, repeat/QRS and coach hints | Not an LLM/local AI model |
| Audio and keying | Existing Morse/audio engine, speed/tone/noise controls, keying modes, converter/WAV, mic receiver, prosigns and hardware input options | Input/audio depends on browser permissions and connected hardware |
| Accessibility | Audio-only and visual-aid controls, hold-W peek, adjustable Studio+ text size, reduced-motion handling | Visual hints are practice aids, not live-caption promises |
| Profile and motivation | Local XP, correct-copy accuracy, streaks, daily goals, achievements and personal scores | Local-only; scores can be reset with browser data loss |
| Personalization | Multiple themes, English/Spanish Studio+ labels, hide/reorder workspace modules, drag-and-drop tab ordering | Translation is partial, not full-site internationalization |
| Portability | Local browser storage and JSON backup/import in Studio+, alongside existing export options | Transfer backups manually between devices |
| Hosted/PWA | GitHub Pages edition, manifest, service-worker shell cache and standalone HTML alternative | PWA caching requires HTTPS and a first online visit |

## Optional online community — not live by default

The Studio+ community panel includes connector controls for Supabase. There is no project URL/key preconfigured. The database migration enables RLS and does not grant anonymous public access. These features therefore do **not** automatically work for the public after GitHub Pages deployment.

| Online feature | Current state |
|---|---|
| Global Chat | Connector UI and manual refresh/send path; requires deployed schema, intentionally configured public/private policies, moderation and abuse controls |
| ON AIR key relay | Polling/posting client path; requires the `onair_key_events` table and secure write/read policies; not a low-latency or guaranteed real-time relay |
| CW Duel | Waiting-match lookup UI only; server-authoritative creation, joining, rounds, reconnect, scoring and anti-cheat are not complete |
| Shared leaderboard | Reads weekly entries if backend access is set up; safe server-side score submission/anti-cheat is not implemented |
| Community totals / 73 counter | No public aggregation service or UI-backed live counters in this release |
| Local AI QSO interpretation | Not included; QSO practice is rule-based and local |
| Cross-device cloud sync | Not included; local progress is not automatically synced |
| Online badges / verified SKCC-LICW identity | Not included |

## Security and privacy

- No account is required for local training.
- Local progress stays in the browser storage for the active device/profile. Private browsing, clearing site data, or changing browsers can lose progress; export backups.
- Community sharing is off by default. Never publish a Supabase service-role key.
- Do not enable public chat or ON AIR write policies without authentication or abuse controls, validation, rate limiting, moderation/reporting, data-retention rules, and clear consent about sharing callsigns/key events.

The reference feature scope was informed by the public README of [ZP5DXS/morse-practice](https://github.com/ZP5DXS/morse-practice#readme). Keyline is an independent implementation and does not include that project's source or assets.


## Progress durability and portable backups

- **Autosave:** added. Existing localStorage keys remain the live app store; writes are mirrored to IndexedDB when the browser supports it.
- **Startup recovery:** added. Before the trainer scripts initialise, missing Keyline-managed entries are restored from the IndexedDB recovery copy.
- **Version-key migration:** supported for recognised versioned settings, course/profile, codebook, and history stores when the current target key is absent.
- **Portable JSON backup:** expanded to include core trainer progress, settings, codebook, transmission history, expanded practice, and Studio+ profile/rewards.
- **Limits:** this does not create cloud sync. Data can still be lost if the user clears all site data, uses a private/temporary browser profile, or moves to a different browser/device without importing a backup. File/standalone storage support depends on the browser. Cookies are not used as the progress database.
