---
name: build-web-apps
description: Scaffold, build and deploy a web app. Use when the user wants to start a new web project, add auth, a database or payments, or get an app deployed.
---

# Build Web Apps

## Start
1. Check the repo for an existing framework, package manager and deploy config. Reuse them.
2. For a new project, default to Vite + React + TypeScript for a single-page app, or Next.js when the app needs server rendering or API routes. Say which and why in one line.

## Build in this order
1. Pages and routing with placeholder content.
2. Data: pick the simplest store that works (local JSON, SQLite, then Postgres/Supabase). Put schema in one file.
3. Auth, only if needed. Use a hosted provider rather than rolling your own.
4. Payments, only if needed. Use the provider's test mode and test keys until the user says to go live.
5. Styling and responsive layout. Check 375 px width.

## Before deploying
- `npm run build` passes with no type errors.
- No secrets in the repo; they live in environment variables.
- A `.env.example` lists every variable the app reads.

## Deploy
Prefer the platform already configured in the repo (vercel.json, netlify.toml, wrangler.toml). Otherwise suggest Vercel for Next.js and Netlify or Cloudflare Pages for static sites. Never deploy to production without the user's go-ahead.
