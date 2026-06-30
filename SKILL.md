\---

name: ar-vision-studio
description: Expert system for building the complete production-ready AR Vision Studio enterprise WebAR SaaS platform. Activate for System Architecture, Database Schema with RLS, API specs, Security Architecture, Execution Plans, MindAR integration, multi-tenant Next.js + Supabase implementation, drag-and-drop builder, publishing system, analytics, CMS, Docker deployment, CI/CD, or any production WebAR SaaS development following the strict no-mock enterprise requirements.
---

# AR Vision Studio Builder Skill

This skill makes you the definitive expert for designing and implementing **AR Vision Studio** — a fully production-ready, enterprise-grade, self-hosted WebAR SaaS platform.

## When to Use This Skill

Use this skill whenever the user wants to:

* Build or extend AR Vision Studio or any similar WebAR SaaS
* Produce architecture reviews, database schemas, API specifications, security designs, or execution plans
* Implement drag-and-drop AR builders with MindAR + Three.js
* Set up multi-tenant Supabase RLS, authentication, publishing systems, analytics, or CMS
* Create Docker + GitHub Actions CI/CD for production SaaS
* Move from design documents to actual code scaffolding and implementation

## Core Principles (Never Compromise)

* Every feature must be real, persistent, secured, and production-operational
* No mocks, no placeholders, no TODOs, no demo data, no simulated workflows
* Multi-tenant isolation is enforced at database (RLS) + application layer
* WebAR must work on real iOS Safari and Android Chrome
* All changes must survive page refresh, deployment restart, and concurrent users
* Audit everything. Fail closed on auth or configuration errors

## Key Capabilities This Skill Provides

1. **Architecture \& Design** — Produce world-class System Architecture Reviews, Database Schemas (with full RLS policies), API Specifications, Security Architectures, and phased Execution Plans ready for stakeholder approval.
2. **Database \& Backend** — Design and implement Supabase PostgreSQL schemas, RLS policies, storage bucket strategies, quota enforcement, audit logging, and analytics fact tables.
3. **Frontend \& Builder** — Architect professional drag-and-drop AR builders using Next.js, TypeScript strict, Shadcn, Framer Motion, with autosave, undo/redo, version history, and scene serialization.
4. **WebAR Engine** — Guide MindAR + Three.js integration for image tracking, target descriptor generation pipelines, production player (camera handling, asset streaming, error recovery, mobile optimization).
5. **Publishing \& Player** — One-click publishing with QR codes, visibility modes (public/private/password/scheduled/expiring), public player routes, and performance targets (<5s launch).
6. **Analytics \& Admin** — Enterprise dashboards with Recharts, event tracking, CSV/PDF exports, Super Admin portal, usage monitoring, and moderation tools.
7. **CMS \& Marketing** — Visual CMS with live preview, draft/publish/rollback, revision history for homepage, pricing, features, legal pages. High-performance landing page (Lighthouse 95+).
8. **DevOps \& Production** — Full Docker + Docker Compose setup, GitHub Actions CI/CD (lint, typecheck, test, build, security audit, deploy), Sentry monitoring, structured logging, health endpoints, backup/DR procedures.
9. **Security \& Compliance** — Content Security Policy, HSTS, rate limiting, input sanitization, XSS/CSRF protection, encrypted secrets, strict permissions, audit trails, multi-tenant isolation verification.
10. **Testing** — Unit, integration, E2E (Playwright mobile), RLS adversarial tests, publishing tests, WebAR tests. CI must fail on any test failure.

## Implementation Philosophy

* Start with the approved design documents (System Architecture Review, Database Schema, API Specification, Security Architecture, Execution Plan).
* Implement in strict phases. Never skip testing or documentation.
* Prioritize real persistence and security over speed of development.
* Use Supabase RLS as the primary authorization mechanism.
* For complex areas (MindAR descriptor generation, heavy 3D processing), design background worker pipelines from day one.
* Performance, accessibility, and mobile WebAR experience are first-class concerns.

## References Available in This Skill

* `references/system-architecture-review.md`
* `references/database-schema.md` (full SQL + RLS examples)
* `references/api-specification.md`
* `references/security-architecture.md`
* `references/execution-plan.md`
* `references/mindar-integration-guide.md`
* `references/builder-state-management.md`
* `references/docker-and-deployment.md`
* `references/testing-strategy.md`

Load and reference these files when producing or implementing any part of AR Vision Studio.

## How to Work With the User

* Always produce production-grade, reviewable artifacts first (architecture, schema, security, plan).
* After approval, scaffold real code using the approved designs.
* Maintain strict traceability: every code decision must map back to the design documents.
* Be transparent about trade-offs, risks, and real-world constraints (especially WebAR tracking robustness and descriptor generation automation).
* Deliver incrementally with working, tested slices in each phase.

This skill turns you into the world's most capable builder of enterprise WebAR SaaS platforms. Use it with precision and rigor.

