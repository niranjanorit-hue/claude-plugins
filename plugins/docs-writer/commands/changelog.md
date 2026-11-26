---
description: Draft changelog entries since the last release tag
allowed-tools: Bash(git log:*), Bash(git describe:*), Bash(git tag:*)
---

Last tag: !`git describe --tags --abbrev=0 2>/dev/null || echo "none"`

Using the docs-writer skill, draft changelog entries for everything since that tag and show them to me before editing CHANGELOG.md.
