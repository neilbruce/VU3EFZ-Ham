# Release test checklist

## Core and new local practice

- [ ] Opens from the GitHub Pages project path on HTTPS.
- [ ] Standalone HTML opens with network disconnected in a supported browser.
- [ ] PWA manifest is recognized; service worker caches updated shell and refreshes across releases.
- [ ] No uncaught errors on startup or when switching Studio+ tabs.
- [ ] Existing Koch/group/word/callsign/QSO/text/echo workflows still work.
- [ ] All Koch lesson transitions/unlocks and cumulative listening progress behave as intended.
- [ ] Mistake-weighted/adaptive characters update local stats.
- [ ] Custom lessons, daily drills and send practice accept expected input.
- [ ] CW Racer Learn, timed Sprint and continuous-speed ladder start, score, stop and save personal bests.
- [ ] Five arcade modes operate and support next-round/reset behavior.
- [ ] QSO scenarios (Basic/POTA/SKCC/contest), QRS/repeat, hints, transcript and send/receive flow work.
- [ ] Existing converter, WAV export, microphone receiver and codebook/prosign reference work.
- [ ] Keyboard, touch, mouse, MIDI/serial inputs tested on supported hardware.
- [ ] Audio frequency, WPM timing, Farnsworth behavior, noise and stop/cancel behavior checked on desktop and mobile.
- [ ] JSON backup/import round-trip covers the Studio+ local profile; corrupt backup errors are understandable.
- [ ] Theme, English/Spanish labels, workspace reordering/hide controls and large text settings are usable.
- [ ] No duplicate IDs in Studio+ DOM; no uncaught console errors; accessibility keyboard focus is visible.

## Online features

- [ ] Community sharing remains disabled until an operator explicitly opts in and configures a project.
- [ ] Apply migrations 001 and 002 and review all RLS policies before allowing public traffic.
- [ ] With at least two test users, validate chat room separation, message validation, rate limiting, moderation/reporting and deletion.
- [ ] With at least two test users, validate ON AIR latency, duration limits, no duplicate event playback, user attribution and reconnect/disconnect.
- [ ] Confirm service-role credentials are never present in frontend files.
- [ ] Do not publish full Duel, shared scores, verified badges, community totals, local AI or cloud sync as available until each is implemented and tested.

## Device and deployment matrix

- [ ] Desktop: current Chrome/Edge/Firefox/Safari.
- [ ] Phone: iOS Safari and Android Chrome, portrait/landscape.
- [ ] Tablet: touch and keyboard input as available.
- [ ] Offline reload after a successful first visit.
- [ ] Verify backup restore after clearing the app cache/site storage.
- [ ] Test a clean browser profile with no old service-worker cache.


## Phone layout and arcade regression

- [ ] At 320 px, 360 px, 390 px and 430 px CSS viewport widths, the document has no horizontal overflow.
- [ ] Key-input decoded transcript wraps within the keyer panel and buttons remain fully visible.
- [ ] Studio+ cards, rows, prompts, and long transcript text do not widen the page.
- [ ] Legacy CW Arcade defaults to the full A–Z alphabet; mixed letters/numbers and progressive Koch-pool modes are selectable.
- [ ] Arcade prompt, answer choices, and replay all use the selected pool after changing it.
- [ ] Repeat the checks on hosted and standalone editions, and after an offline reload.


## Cross-panel responsive layout

- [ ] At desktop widths above 1280 CSS px, Keyline core and Studio+ panels align at the top in a two-column layout.
- [ ] At 1280 CSS px and below, the core and Studio+ stack vertically in one readable column.
- [ ] Check at 320, 360, 390 and 430 CSS px; body scroll remains vertical and no panel creates horizontal scrolling.
- [ ] Change orientation/resize from desktop to phone width and confirm both panels reflow without reload.
- [ ] Confirm the service worker v4 replaces any v3 shell cache after deployment.
