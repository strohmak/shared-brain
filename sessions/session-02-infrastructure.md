# Session 02 — Infrastructure Build
*April 27, 2026*

## What we built
Set up the complete Supabase vault infrastructure and connected it 
to Claude Desktop via MCP.

## Steps completed
1. Enabled pgvector extension in Supabase
2. Created three tables: documents, memories, sessions
3. Enabled RLS on all tables
4. Connected Supabase to Claude Desktop via MCP server
5. Resolved MCP authentication — requires Personal Access Token (PAT)
   in addition to service role key

## Key insights
- The MCP server requires a Supabase PAT (account-level token), not 
  just the project-level service role key
- Credentials go in env vars, not args, for this version of the 
  MCP server
- The vault is AI-agnostic by design — any AI can query the same 
  Supabase database
- RLS should be enabled from day one on a personal knowledge vault

## Decisions
- Three tables mirror the three capture modes
- RLS enabled on all tables from creation
- PAT set to never expire

## Troubleshooting notes
- `--supabase-url` flag is not supported — use env vars instead
- Cached npx version may cause issues — clear with fresh install if needed
- Config file location: `~/Library/Application Support/Claude/claude_desktop_config.json`

## Open questions
- Obsidian MCP connection — Session 3
- GitHub repo structure — Session 3

## Credentials saved
- Project URL: https://safaktwudlpofrvlmxua.supabase.co
- Service role key: saved locally
- PAT: set to never expire