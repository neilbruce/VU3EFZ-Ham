# Optional Supabase backend

This is a **starter schema, not a live backend**. It intentionally enables Row Level Security (RLS) without permissive anonymous policies. The public app has no project URL/key configured, so no community service is connected by default.

Apply the migrations in order:

1. `migrations/001_community_schema.sql`
2. `migrations/002_onair_rooms.sql` — adds room-aware chat and ON AIR key-event storage.

The current Studio+ client has a manual-refresh chat path, an ON AIR polling/posting path, and a weekly-board read path. The client does not implement a complete server-authoritative Duel or a safe shared-score submission service. Nothing should be considered public community-ready just because these UI controls exist.

Before public launch, add carefully scoped policies or server-side Edge Functions for:
- reading/writing room messages and key events;
- validation, rate limits, callsign spoofing controls and abuse reporting;
- data retention/deletion, moderation and community guidelines;
- server-side scoring and anti-cheat if a shared leaderboard is offered;
- authenticated matchmaking and server-authoritative duel state.

The ON AIR client polls the database; it is not a dedicated low-latency radio transport. Test latency, duplication and reconnection with multiple real operators before promoting it.

Never put a service-role key in `index.html`, `Keyline-Standalone.html`, source files, or any other public frontend file. The public anon key is designed to be exposable only when RLS policies and server-side validation are correct.
