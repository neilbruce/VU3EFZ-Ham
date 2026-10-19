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
