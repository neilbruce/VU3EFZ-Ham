-- Keyline optional community backend: starter schema only.
-- Review policies and rate limits before public launch. Do not use a service-role key in the browser.

create extension if not exists pgcrypto;

create table if not exists public.community_messages (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  display_callsign text not null default 'Guest',
  body text not null check (char_length(body) between 1 and 500)
);

create table if not exists public.leaderboard_entries (
  id uuid primary key default gen_random_uuid(),
  week_start date not null,
  callsign text not null check (char_length(callsign) between 1 and 24),
  points integer not null default 0 check (points >= 0 and points <= 1000000),
  streak integer not null default 0 check (streak >= 0 and streak <= 10000),
  updated_at timestamptz not null default now(),
  unique (week_start, callsign)
);

create table if not exists public.community_totals (
  key text primary key,
  value bigint not null default 0 check (value >= 0),
  updated_at timestamptz not null default now()
);

create table if not exists public.duel_matches (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  status text not null default 'waiting' check (status in ('waiting','active','completed','abandoned')),
  speed_wpm integer not null check (speed_wpm in (8,15,20)),
  challenger_callsign text not null check (char_length(challenger_callsign) between 1 and 24),
  opponent_callsign text check (opponent_callsign is null or char_length(opponent_callsign) between 1 and 24),
  round_index integer not null default 0 check (round_index between 0 and 30),
  state jsonb not null default '{}'::jsonb
);

alter table public.community_messages enable row level security;
alter table public.leaderboard_entries enable row level security;
alter table public.community_totals enable row level security;
alter table public.duel_matches enable row level security;

-- Safe-by-default: no anonymous write/read policies are granted here.
-- Add narrowly scoped policies or server-side Edge Functions only after deciding:
-- * whether anonymous posting is allowed,
-- * how callsigns are verified and protected against impersonation,
-- * rate limits and spam reporting,
-- * which fields are public,
-- * how long messages and duel state are retained.
-- Enable Realtime for community_messages and duel_matches only after access policy review.
