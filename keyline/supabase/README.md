# Optional Supabase backend

This is a **starter schema, not a live backend**. It intentionally enables RLS without permissive anonymous policies. Therefore the community tables are not accessible from the public frontend until appropriate policies or server-side Edge Functions are added.

For a production implementation, create a Supabase project, apply the migration, then add:
- constrained posting/leaderboard RPCs or Edge Functions;
- rate limiting and abuse reporting;
- privacy and retention rules;
- realtime channel authorization for ON AIR/Chat/Duel;
- explicit consent and clear UI indicators before broadcasting CW keying or callsigns.

Never put a service-role key in `index.html`, `community.js`, or any other public file.
