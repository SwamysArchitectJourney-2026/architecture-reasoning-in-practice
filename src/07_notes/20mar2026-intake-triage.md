# 20 Mar 2026 Intake Triage

## Purpose

Capture useful signals from today's raw intake and isolate mixed or out-of-scope material without polluting structured folders.

## Source Status

The source note blends multiple domains:

- ML model artifact packaging guidance
- Notebook image/IP sharing guidance
- Role and job-description style competency lists
- Repository requirements pointers from a different context

Because these ideas are mixed and partially off-contract for direct placement, this content is staged in `07_notes`.

## Extracted Signals (Transformed)

### 1. Model Artifact Decision Framing

Practical reasoning signal:

- Distinguish object-level serialization from framework-native checkpointing.
- Prefer weight-only checkpoint patterns for stability across code evolution.
- Treat portable interchange formats as a separate decision axis from local developer velocity.

Potential promotion target:

- `02_thinking/tradeoffs/` as a reasoning note on portability vs operability.

### 2. Learning Asset Governance for Public Repositories

Practical governance signal:

- Embedded media in notebook files can still redistribute original assets.
- Prefer references, self-created diagrams, or generated visual outputs.
- Use repository structure to separate generated assets, notes, and source code.

Potential promotion target:

- `06_reference/` as a concise policy checklist for learning-content hygiene.

### 3. Role Capability Signals (Architecture + Engineering Leadership)

Practical role signal:

- Platform leadership requires both technical depth and delivery governance.
- Cross-functional architecture ownership includes reliability, data trust, and stakeholder alignment.
- AI-assisted engineering should be treated as an operating model change, not a tool-only change.

Potential promotion target:

- `04_roles/architect/` and later `04_roles/engineering-manager/` (if/when the role folder is activated).

## What Not to Promote As-Is

Do not directly promote:

- Vendor/job-posting prose blocks
- Copy-ready answer snippets
- External requirements tables not governed by this repository's folder contracts

## Promotion Plan

1. Create one short reasoning note in `02_thinking/tradeoffs/` on model artifact portability decisions.
2. Create one short reference policy in `06_reference/` for notebook content/IP hygiene.
3. Convert role-oriented bullet lists into accountability language under `04_roles` only after de-duplication.

## Zero-Copy Checkpoint

This note is intentionally rewritten as synthesis only.
No source text is copied verbatim.
