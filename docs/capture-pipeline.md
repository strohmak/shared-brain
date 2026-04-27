# Shared Brain — Capture Pipeline

## The Principle
Many input modes, one destination.

Every capture source feeds the same Supabase vault. No parallel 
databases, no split knowledge. The value compounds only if 
everything flows to the same place.

## Input Sources

### Voice (Wispr Flow)
Speak → text enters Claude chat → follows chat session workflow
Primary mode for thinking out loud and on-the-go capture.

### Chat (Claude web / mobile / desktop)
The primary thinking partner surface. Every meaningful session 
produces a capture at the end.

### Meeting transcripts (Fathom / Google Meet)
Export transcript → bring to a session → extract insights together
Raw transcript → documents table
Lessons → memories table
Significant meeting → sessions table entry

### Browser clips
Save link or content → bring to a session for tagging
Tagged content → documents table
Reaction or takeaway → memories table

### GitHub repos
Ingest repo as a document → session about what to learn from it
Repo → documents table
Learnings → memories table

### Files and documents
Client briefs, PDFs, SOPs, reference material
Upload → process → documents table

## The Triage Layer
Every input gets three tags before landing in the database:

**Domain:** gtm · revops · personal · content · adhd · client
**Source type:** chat · file · video · meeting · repo · clip · sop  
**Confidence:** firm · exploring · uncertain

## The Governing Rule
Nothing goes to the vault automatically without a moment of 
intention. Auto-summarization is fine for processing, but the 
act of saving is always deliberate.

The question before saving anything:
**Would I want this context loaded at the start of a future session?**

If yes → save it. If no → let it go.