---
description: Review the current git diff (or a branch) with the code-reviewer agent
argument-hint: [base-branch]
allowed-tools: Bash(git diff:*), Bash(git log:*), Bash(git status:*)
---

Current status: !`git status --short`

Use the code-reviewer agent to review the changes against ${ARGUMENTS:-the default branch}. Summarise the findings, most severe first.
