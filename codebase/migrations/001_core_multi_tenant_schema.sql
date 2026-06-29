-- AR Vision Studio - Core Multi-Tenant Schema
-- Run this in your Supabase SQL editor or via migrations

-- Enable necessary extensions
create extension if not exists "uuid-ossp";
create extension if not exists "pgcrypto";

-- Enums
create type tenant_role as enum ('owner', 'admin', 'member', 'viewer');

-- Organizations (Tenants)
create table if not exists organizations (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  slug text unique not null,
  owner_id uuid references auth.users(id),
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

-- Organization Members
create table if not exists organization_members (
  id uuid primary key default gen_random_uuid(),
  organization_id uuid references organizations(id) on delete cascade not null,
  user_id uuid references auth.users(id) on delete cascade not null,
  role tenant_role not null default 'viewer',
  invited_by uuid references auth.users(id),
  joined_at timestamptz default now(),
  unique (organization_id, user_id)
);

-- Workspaces
create table if not exists workspaces (
  id uuid primary key default gen_random_uuid(),
  organization_id uuid references organizations(id) on delete cascade not null,
  name text not null,
  created_at timestamptz default now()
);

-- Projects
create table if not exists projects (
  id uuid primary key default gen_random_uuid(),
  workspace_id uuid references workspaces(id) on delete cascade not null,
  name text not null,
  description text,
  status text default 'draft',
  created_by uuid references auth.users(id),
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

-- Target Images
create table if not exists target_images (
  id uuid primary key default gen_random_uuid(),
  project_id uuid references projects(id) on delete cascade not null,
  original_storage_path text not null,
  descriptor_storage_path text,
  quality_score numeric(5,2),
  trackability_status text check (trackability_status in ('excellent','good','fair','poor','failed')),
  width int,
  height int,
  processed_at timestamptz,
  created_at timestamptz default now()
);

-- Published Experiences
create table if not exists published_experiences (
  id uuid primary key default gen_random_uuid(),
  project_id uuid references projects(id) on delete cascade,
  slug text unique not null,
  visibility text check (visibility in ('public','private','password','scheduled','expiring')) default 'public',
  password_hash text,
  published_at timestamptz,
  expires_at timestamptz,
  qr_code_storage_path text,
  analytics_enabled boolean default true,
  created_at timestamptz default now()
);

-- Basic RLS (enable and add policies)
alter table organizations enable row level security;
alter table organization_members enable row level security;
alter table workspaces enable row level security;
alter table projects enable row level security;
alter table target_images enable row level security;
alter table published_experiences enable row level security;

-- Example RLS Policies (basic - expand in later migrations)
create policy "Users can view their organizations"
  on organizations for select
  using (id in (select organization_id from organization_members where user_id = auth.uid()));

create policy "Users can view their memberships"
  on organization_members for select
  using (user_id = auth.uid() or organization_id in (select organization_id from organization_members where user_id = auth.uid() and role in ('owner', 'admin')));

-- Add more policies as you implement features
-- Published experiences should be readable publicly for the player
create policy "Published experiences are publicly readable"
  on published_experiences for select
  using (visibility = 'public' or (visibility = 'password' and password_hash is not null));

comment on table organizations is 'Top-level tenant / organization';
comment on table projects is 'AR projects belonging to a workspace';
