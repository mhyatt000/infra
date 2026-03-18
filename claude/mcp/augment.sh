# setup
npm install -g @augmentcode/auggie@latest
auggie login

# claude
claude mcp add-json auggie --scope user '{"type":"stdio","command":"auggie","args":["--mcp","--mcp-auto-workspace"]}'
claude mcp add-json auggie --scope project '{"type":"stdio","command":"auggie","args":["--mcp","--mcp-auto-workspace"]}'

# codex
codex mcp add codebase-retrieval -- auggie --mcp --mcp-auto-workspace
