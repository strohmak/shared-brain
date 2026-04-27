-- The Shared Brain — Supabase Schema
-- Run this in the Supabase SQL Editor to set up the vault

-- Enable vector extension for semantic search
create extension if not exists vector;

-- Documents table: stores everything that enters the vault
create table documents (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  content text not null,
  summary text,
  source_type text, -- 'chat' | 'file' | 'video' | 'meeting' | 'repo' | 'clip'
  domain text,      -- 'gtm' | 'revops' | 'personal' | 'content' | 'adhd'
  confidence text,  -- 'firm' | 'exploring' | 'uncertain'
  project_id text,  -- links to Notion project ID
  source_url text,
  embedding vector(1536),
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

-- Memories table: stores insights and lessons from sessions
create table memories (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  insight text not null,
  previous_thinking text,  -- what we thought before
  what_changed text,       -- what updated it
  lesson text,             -- the versioned learning
  domain text,
  confidence text,
  project_id text,
  document_ids uuid[],     -- links to source documents discussed
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

-- Sessions table: stores meeting minutes from every chat session
create table sessions (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  summary text not null,
  key_insights text[],
  decisions text[],
  open_questions text[],
  project_id text,
  document_ids uuid[],
  memory_ids uuid[],
  session_date timestamptz default now(),
  created_at timestamptz default now()
);