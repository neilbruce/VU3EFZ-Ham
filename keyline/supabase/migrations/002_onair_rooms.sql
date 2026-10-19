-- Keyline optional ON AIR relay + room-aware chat compatibility.
-- Additive migration for existing projects that already applied 001_community_schema.sql.
-- This migration intentionally does not add permissive public policies.

alter table public.community_messages
  add column if not exists room_id text not null default 'general';

create index if not exists community_messages_room_created_idx
  on public.community_messages (room_id, created_at desc);

create table if not exists public.onair_key_events (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  room_id text not null default 'general'
    check (char_length(room_id) between 1 and 32),
  callsign text not null default 'Guest'
    check (char_length(callsign) between 1 and 24),
  element text not null check (element in ('.','-')),
  duration_ms integer not null default 120
    check (duration_ms between 40 and 1800)
);

create index if not exists onair_key_events_room_created_idx
  on public.onair_key_events (room_id, created_at);

alter table public.onair_key_events enable row level security;

-- No anon policies are created intentionally.
-- Before enabling public use, add narrowly scoped read/insert policies or,
-- preferably, authenticated Edge Functions with event validation, a per-user
-- rate limit, anti-impersonation controls and abuse reporting.
-- These key events are not a guaranteed realtime transport; the current client
-- polls the table. Validate latency/duplicate suppression with at least two stations.
