# AR Vision Studio

Enterprise-grade, self-hosted WebAR SaaS platform.

## Tech Stack
- Next.js 15 (App Router) + TypeScript (strict)
- Supabase (PostgreSQL + Auth + Storage)
- MindAR + Three.js for WebAR
- Tailwind + Shadcn UI + Framer Motion
- Docker + Docker Compose

## Quick Start (Local Development)

1. **Clone and install**
   ```bash
   cd codebase
   npm install
   ```

2. **Setup environment**
   ```bash
   cp .env.example .env.local
   ```
   Fill in your Supabase credentials.

3. **Run Supabase locally** (recommended)
   ```bash
   npx supabase start
   ```

4. **Apply migrations**
   ```bash
   # Copy the SQL from migrations/001_core_multi_tenant_schema.sql
   # and run it in your Supabase SQL editor or via Supabase CLI
   ```

5. **Start development server**
   ```bash
   npm run dev
   ```

## Docker (Production)

```bash
docker compose up --build
```

## Project Structure

```
codebase/
├── app/                    # Next.js App Router
│   ├── (marketing)/        # Public landing pages
│   ├── (dashboard)/        # Authenticated app
│   ├── (auth)/             # Login, signup, etc.
│   └── api/                # Route handlers
├── components/
│   ├── ar-builder/         # Drag & drop AR builder
│   ├── player/             # WebAR player
│   ├── analytics/
│   ├── admin/
│   └── cms/
├── lib/supabase/           # Supabase clients
├── migrations/             # SQL migrations
├── Dockerfile
├── docker-compose.yml
└── next.config.ts
```

## Important Notes

- This is a **production-grade scaffold**, not a complete application.
- All business logic must use **Row Level Security (RLS)** in Supabase.
- WebAR features (MindAR) will be implemented in later phases.
- Run `npm run db:generate` after your schema is stable to get TypeScript types.

## Next Steps

This scaffold follows the approved System Architecture and Database Schema from the design documents.

We will now implement features iteratively:
1. Authentication + Organization onboarding
2. Project & Workspace management
3. Target image upload + processing
4. AR Builder
5. Publishing system + Player
6. Analytics
7. CMS + Admin portal

Ready to continue building?
