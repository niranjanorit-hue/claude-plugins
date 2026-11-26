---
name: docs-writer
description: Write or update a README, changelog, or API reference from the actual code. Use when the user asks for documentation or when docs are out of date after a change.
---

# Docs Writer

Read the code before writing. Every command, flag, and example must come from the repo, not from memory.

## README
Sections, skipping any that don't apply: what it is (two sentences), install, quick start (the shortest working example), configuration, common tasks, contributing, license. Run the quick-start commands if you can and fix anything that fails.

## Changelog
Follow Keep a Changelog. Group under Added, Changed, Fixed, Removed. Build entries from `git log` since the last tag, written for users, not as commit subjects.

## API reference
One entry per public function, endpoint or CLI command: signature, parameters, return value, errors, and one example. Generate from docstrings or types when they exist.

## Style
Short sentences, second person, present tense. Code blocks always name their language.
