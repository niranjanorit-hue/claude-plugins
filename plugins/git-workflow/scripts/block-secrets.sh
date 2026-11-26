#!/usr/bin/env bash
# PreToolUse hook: stop `git commit` when staged files look like secrets.
input=$(cat)
cmd=$(printf '%s' "$input" | python3 -c 'import json,sys; print(json.load(sys.stdin).get("tool_input",{}).get("command",""))' 2>/dev/null)
case "$cmd" in
  *"git commit"*) ;;
  *) exit 0 ;;
esac
staged=$(git diff --cached --name-only 2>/dev/null)
bad=$(printf '%s\n' "$staged" | grep -Ei '(^|/)(\.env(\..*)?|id_rsa|id_ed25519|.*\.pem|.*\.p12|credentials\.json|secrets?\.(json|ya?ml))$' | grep -v '\.example$')
if [ -n "$bad" ]; then
  echo "Blocked: these staged files look like secrets and should not be committed:" >&2
  printf '  %s\n' $bad >&2
  echo "Unstage them (git restore --staged <file>) and add them to .gitignore." >&2
  exit 2
fi
exit 0
