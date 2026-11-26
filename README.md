# Claude Plugins

A curated collection of Claude Code plugin examples, packaged as a plugin marketplace.

Each plugin lives under `plugins/<name>/` with a required `.claude-plugin/plugin.json`
manifest and optional parts such as `skills/`, `commands/`, `agents/`,
`hooks/hooks.json`, `.mcp.json` and `scripts/`.

The marketplace catalog lives at `.claude-plugin/marketplace.json` and points at the
plugins in the `plugins/` directory.

## Install

In Claude Code:

```
/plugin marketplace add niranjanorit-hue/claude-plugins
/plugin install game-studio@niranjan-plugins
```

Or browse everything with `/plugin`.

## Plugins

| Plugin | What it shows | Parts |
| --- | --- | --- |
| `game-studio` | Plan, prototype and playtest browser games | skill, command, references |
| `build-web-apps` | Scaffold, build and deploy web apps | skill, command |
| `code-reviewer` | Focused code reviews | subagent, command |
| `git-workflow` | Commit and PR helpers, secret-blocking hook | skill, command, hook |
| `docs-writer` | READMEs, changelogs, API docs | skill, command |
| `web-research` | Reading the web through an MCP server | MCP server, skill |

## Add a plugin

1. Create `plugins/<name>/.claude-plugin/plugin.json`.
2. Add skills (`skills/<skill>/SKILL.md`), commands (`commands/*.md`), agents (`agents/*.md`), hooks or MCP servers.
3. Add an entry to `.claude-plugin/marketplace.json`.
4. Run `claude plugin validate .` and open a pull request.

## License

MIT
