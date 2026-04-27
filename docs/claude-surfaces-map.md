# Shared Brain — Claude Surfaces Map

## The Principle
Right tool, right job. Every Claude surface has a specific role 
in the Shared Brain workflow. Using the wrong surface for the 
wrong job creates friction and breaks the system.

## The Surfaces

### Claude Web (claude.ai)
**Role:** Primary thinking partner surface
**Use for:**
- Strategy and architecture decisions
- Long-form thinking and synthesis
- Session design and system evolution
- Drafting meeting minutes
- Contradiction resolution
- Deep work that requires full context

**Does NOT:** write to Supabase or Obsidian directly

### Claude Desktop
**Role:** Execution and commit layer
**Use for:**
- Writing to Supabase vault (sessions, documents, memories)
- Writing to Obsidian wiki (creating and editing notes)
- Reading from Notion (loading project context)
- Updating Notion (tasks and decisions)
- All MCP operations

**Key rule:** Claude Desktop is the ONLY surface with full MCP 
connections. All vault commits happen here.

### Claude Mobile
**Role:** On-the-go capture
**Use for:**
- Voice capture via Wispr Flow
- Quick thoughts and observations
- Continuing sessions started on desktop
- Reading and light synthesis

### Claude Code
**Role:** Automation surface
**Use for:**
- Writing and running scripts
- Auto-ingesting transcripts and repos
- Generating Obsidian pages from vault contents
- Building repeatable capture workflows
- Technical development (GTM engineering track)

### Claude Cowork
**Role:** File and task surface
**Use for:**
- Processing completion packages
- Routing files to the right destination
- Desktop automation
- File management across the system

### Claude for Chrome
**Role:** Browser capture
**Use for:**
- Clipping articles and web content
- Saving links to the pipeline
- One-click capture while browsing

## The Grey Matter Analogy

| Component | Brain equivalent |
|-----------|-----------------|
| Claude Web | Grey matter — where processing happens |
| Supabase | Hippocampus — long-term memory storage |
| MCP connections | White matter — signal pathways between regions |
| Cursor | Motor cortex — where decisions become actions |
| SKILL.md | Myelin — faster, more reliable signal transmission |
| Obsidian | Visual cortex — thinking made visible |

## The Commit Rule
Thinking happens in Claude web.
Commits happen in Claude Desktop.
Automation happens in Claude Code.
Files happen in Claude Cowork.
Capture happens in Claude Mobile and Chrome.

## Testing MCP Operations
Always test write operations in Claude Desktop, not Claude web.
Claude web has read-only or limited MCP connectors.
Claude Desktop has the full MCP stack.

If MCP connects but shows limited tools:
Fully quit and restart Claude Desktop.
npx may need a clean cycle to load the full package.