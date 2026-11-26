---
name: game-studio
description: Plan and build a browser game. Use when the user wants to design, prototype or polish a 2D or 3D web game, pick an engine, or set up a core gameplay loop.
---

# Game Studio

Help the user go from idea to a playable browser game in small, testable steps.

## 1. Pin down the game
Ask only what you cannot infer: genre, 2D or 3D, target device (desktop, mobile, both), and the one thing that should feel fun. Write a one-paragraph game brief and confirm it.

## 2. Choose the stack
- 2D, arcade or puzzle: Phaser 3, or plain Canvas for tiny games.
- 3D: Three.js; React Three Fiber if the project already uses React.
- Physics: Arcade physics for simple 2D, Rapier for 3D or precise 2D.
Explain the choice in one sentence. Prefer what the repo already uses.

## 3. Build the core loop first
Get one screen playable before menus, sound or art: input, movement, one goal, one fail state, restart. Use placeholder shapes. Keep game state in one plain object so it is easy to inspect.

## 4. Layer in the rest
Score and HUD, then levels or waves, then juice (screen shake, particles, easing), then audio, then menus. Run the game after each layer.

## 5. Playtest
Use the checklist in `references/playtest-checklist.md`. Fix anything that breaks the core loop before adding features.

## Rules
- Original games only. Do not recreate a specific existing game's name, characters, art, music or levels.
- Keep frame time under 16 ms on a mid-range laptop; profile before optimising.
