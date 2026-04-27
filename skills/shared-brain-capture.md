# Shared Brain Capture Skill v1

## Purpose
This skill governs how knowledge gets captured, routed, and saved across the 
Shared Brain system. Every Claude surface that interacts with this project 
follows these rules.

## The Three Tables

### sessions
One entry per meaningful conversation where something was established, 
decided, or learned.

**The test:** would future-me want to know this conversation happened?

Fields to populate:
- title: descriptive session name with date
- summary: 2-3 sentence overview of what happened
- key_insights: array of the most important takeaways
- decisions: array of decisions made
- open_questions: array of unresolved questions to carry forward
- session_date: date of the conversation

### documents
Source material added as reference knowledge. Saved untouched.

**Examples:** client briefs, meeting transcripts, GitHub repos, articles, 
video transcripts, SOPs

Fields to populate:
- title: clear descriptive title
- content: full text of the document
- summary: AI-generated summary
- source_type: 'chat' | 'file' | 'video' | 'meeting' | 'repo' | 'clip' | 'sop'
- domain: 'gtm' | 'revops' | 'personal' | 'content' | 'adhd' | 'client'
- confidence: 'firm' | 'exploring' | 'uncertain'
- project_id: Notion project ID if linked to a client project

### memories
Insights and realizations representing a shift or consolidation in thinking.

**Examples:** a lesson from a client project, a realization from a chat, 
an update to previous thinking

Fields to populate:
- title: name of the insight
- insight: the core realization
- previous_thinking: what was believed before (if applicable)
- what_changed: what caused the update
- lesson: the durable takeaway
- domain: same options as documents
- confidence: same options as documents

## Input Workflows

### Chat sessions (Claude web or mobile)
1. Think and explore together
2. At end of session, draft meeting minutes
3. Both review and agree on output
4. Save to sessions table via Claude Desktop

### Meeting transcripts (Fathom / Google Meet)
1. Export transcript
2. Bring into a session
3. Extract key insights together
4. Raw transcript → documents table
5. Lessons → memories table
6. If significant meeting → sessions table entry

### Browser clips and articles
1. Save link or content
2. Bring to a session for tagging
3. Tagged content → documents table
4. Your reaction or takeaway → memories table

### GitHub repos
1. Ingest repo as a document
2. Have a session about what to learn from it
3. Repo → documents table
4. Learnings → memories table

### Audio via Wispr Flow
1. Speak → text enters chat
2. Follows chat session workflow

## The Governing Rule
Nothing goes to the vault without a moment of intention.

**Ask before saving:** would I want this context loaded at the start 
of a future session?

If yes → save it.
If no → let it go.

## Contradiction Protocol
When a contradiction is detected between new input and existing vault content:
1. Surface it immediately — do not proceed silently
2. Discuss and resolve on the spot if possible
3. If unresolved → flag as open question and proceed with caution
4. Update the relevant memory entry with the resolution

## Tags Reference
**source_type:** chat · file · video · meeting · repo · clip · sop
**domain:** gtm · revops · personal · content · adhd · client
**confidence:** firm · exploring · uncertain