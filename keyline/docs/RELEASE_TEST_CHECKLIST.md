# Release test checklist

- [ ] Loads over GitHub Pages HTTPS.
- [ ] PWA manifest is recognized by browser.
- [ ] Service worker installs and app reloads offline after first visit.
- [ ] No external scripts are required for the local training core.
- [ ] Existing Koch/group/word/callsign/QSO/text/echo flows still work.
- [ ] Farnsworth character/effective speed behavior sounds correct.
- [ ] Band noise, tone and word spacing controls work.
- [ ] Converter and WAV export work.
- [ ] Microphone receiver permission, start/stop and error states work.
- [ ] Keyboard, touch, mouse, MIDI/serial controls tested on supported hardware.
- [ ] New listening, adaptive, custom lesson, QSO and game modules tested.
- [ ] JSON backup/import round-trip tested.
- [ ] Standalone HTML opens and functions without GitHub Pages.
- [ ] No duplicate IDs or uncaught console errors.
- [ ] Mobile portrait/landscape and tablet layout checked.
- [ ] Community features remain clearly disabled until backend is configured.
- [ ] If backend enabled: RLS, rate limiting, moderation, callsign consent, retention, reconnect/disconnect and multi-user testing completed.
