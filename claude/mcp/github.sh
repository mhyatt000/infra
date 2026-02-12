# https://github.com/github/github-mcp-server/blob/main/docs/installation-guides/install-claude.md
claude mcp add github -e GITHUB_PERSONAL_ACCESS_TOKEN=YOUR_GITHUB_PAT --scope user -- docker run -i --rm -e GITHUB_PERSONAL_ACCESS_TOKEN ghcr.io/github/github-mcp-server
