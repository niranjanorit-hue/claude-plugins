---
name: commit-messages
description: Write clear git commit messages and pull request descriptions. Use when committing, opening a PR, or when the user asks for a commit message.
---

# Commit messages

- Subject: imperative mood, under 60 characters, no trailing period ("Add retry to upload client").
- Follow the repo's existing convention (Conventional Commits, ticket prefixes) if `git log` shows one.
- Body: what changed and why, wrapped at 72 characters. Skip it for trivial changes.
- One logical change per commit. Suggest splitting if the diff mixes concerns.

# Pull requests
- Use the repo's PR template if there is one.
- Title like a commit subject. Body: summary, why, how it was tested, anything reviewers should look at first.
