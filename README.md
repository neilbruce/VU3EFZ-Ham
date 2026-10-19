# VU3EFZ-Ham

This repository collects tools for programming radio sets and practising CW.

## Keyline CW Trainer

**Built by Ms. Neil Bruce VU3EFZ**

Keyline is an independent local-first CW/Morse trainer with a hosted/PWA edition and a portable standalone HTML edition.

- [Open the public Keyline app](https://neilbruce.github.io/VU3EFZ-Ham/keyline/)
- [Open Keyline project files](keyline/)
- [Standalone HTML edition](keyline/Keyline-Standalone.html)
- [Feature matrix and online-feature limits](keyline/docs/FEATURE_MATRIX.md)
- [Release test checklist](keyline/docs/RELEASE_TEST_CHECKLIST.md)

### Studio+ features

Includes course and adaptive listening practice, custom lessons and daily drills, CW Racer Learn/Sprint/speed ladder, five local arcade modes, scripted POTA/SKCC/contest QSO practice, local operator XP/streaks/achievements, themes and accessibility controls, modular workspace layout, and local data backup/restore.

The standalone edition is a single-file HTML app for local practice. The public hosted edition is deployed by the [GitHub Pages workflow](.github/workflows/deploy-pages.yml).

### Community/backend status

Community controls are optional and not connected to a configured shared backend. ON AIR relay, global chat, a complete duel system, shared score submission, verified badges, community totals, AI QSO and cloud sync are not all live services in this release. Review [feature status and security limitations](keyline/docs/FEATURE_MATRIX.md) before enabling online sharing. Do not publish a Supabase service-role key in frontend code.
