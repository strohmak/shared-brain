# Shared Brain — Architecture Overview

## The Three Layers

The Shared Brain is built on three distinct layers, each with a 
different job and a different write pattern.

### Layer 1 — Open Brain (Supabase)
The vault. Raw knowledge, source documents, meeting transcripts, 
established truths. Immutable and queryable. Nothing gets edited 
here — things only get added.

Write pattern: intentional, deliberate, permanent.

Tables: documents · memories · sessions

### Layer 2 — Conversation Layer (Claude)
The nervous system. Every chat session is a collaborative synthesis 
event. The AI loads relevant context, thinking happens together, 
and co-authored meeting minutes get saved before anything is committed.

Write pattern: every meaningful session produces a capture.

Surfaces: Claude web · Claude Desktop · Claude Mobile

### Layer 3 — Wiki (Obsidian)
Compiled understanding. Generated from the vault. Reflects how the 
user thinks, not just what they know. Never edited directly — fix 
the source, regenerate the output.

Write pattern: generated, not written.

Location: ~/shared-brain-wiki

## The Three Systems

### Supabase — the vault
- SQL + pgvector for semantic search
- Three tables: documents, memories, sessions
- RLS enabled on all tables
- AI-agnostic — any AI can query the same database

### Notion — operational workflow  
- Tasks, projects, client management
- Where work happens day to day
- Connected via MCP to Claude Desktop
- Graduation trigger: significant Notion entries move to Supabase

### Obsidian — compiled understanding
- Local markdown files
- Connected via obsidian-mcp to Claude Desktop
- Graph view shows knowledge connections visually
- Personal — never goes to GitHub

## Claude as the Nervous System

Claude Desktop connects all three via MCP:
- Reads from Supabase (retrieves context)
- Writes to Supabase (commits captures)
- Reads from Notion (loads project context)
- Writes to Notion (updates tasks and decisions)
- Writes to Obsidian (generates wiki pages)

## The Governing Principle

Nothing goes to the vault without a moment of intention.

Ask before saving: would I want this context loaded at the start 
of a future session?