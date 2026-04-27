# Session 04 — Obsidian Connection
*April 27, 2026*

## What we built
Connected Obsidian to Claude Desktop via MCP, completing the third 
and final layer of the Shared Brain. All three layers now operational.

## Steps completed
1. Installed Obsidian and created shared-brain-wiki vault
2. Installed Local REST API community plugin
3. Configured obsidian-mcp in claude_desktop_config.json
4. Successfully created first wiki note from Claude Desktop
5. Connected GitHub Desktop as visual git interface

## Key insights
- obsidian-mcp works via local vault folder path, not REST API URL
- Claude web has limited MCP tools — always test write operations 
  in Claude Desktop
- Multiple clean restarts may be needed for npx to load the latest 
  package version correctly
- GitHub Desktop and Cursor terminal do the same thing — use 
  whichever fits the moment
- The graph view in Obsidian is the visual map of how ideas connect
- All three layers now connected: Supabase + Obsidian + Notion, 
  Claude is the nervous system

## Decisions
- obsidian-mcp with vault folder path is the correct config
- GitHub Desktop added as visual git interface alongside Cursor
- Wiki vault lives at ~/shared-brain-wiki, separate from the repo

## Troubleshooting notes
- If MCP connects but shows limited tools, fully quit and restart 
  Claude Desktop — npx may need a clean cycle to load the full package
- obsidian-mcp requires the vault folder path, not the REST API URL

## Open questions
- SKILL.md needs to be added to project knowledge
- Docs folder needs architecture diagrams populated

## Supabase session ID
4c3ef495-ffcf-4781-b575-ad6bd2ac011a