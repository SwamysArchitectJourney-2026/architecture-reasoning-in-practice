# Master Plan — GitHub Foundations Learning Journey

Date: 28 Dec 2025

## Purpose

Build a practical, exam-focused learning repository for the **GitHub Foundations Certification**.

This repo is optimized for:

* Self-study in timeboxed sessions
* Small-group meetup delivery
* Hands-on practice with real GitHub workflows
* Exam preparation with structured coverage of all domains

## Principles (Non-Negotiables)

* **Exam-focused**: Content aligned with GitHub Foundations Certification exam domains
* **Practice-oriented**: Each session produces an artifact (notes, checklist, hands-on exercise, or diagram)
* **Production-aware**: Security, best practices, and real-world workflows are first-class
* **Original content**: No course-clone structure or copied marketing text
* **Hands-on**: Labs and exercises reinforce concepts through practice

## Intended Audience

* Developers preparing for GitHub Foundations Certification
* Beginners exploring version control and GitHub
* Teams adopting collaborative workflows
* Professionals interested in contributing to open source
* Students starting their software development journey

## Session Format (30-60 minutes)

Each session should fit in 30-60 minutes and ship with a single primary artifact.

Recommended structure per session:

1. Objective (1–2 minutes)
2. Core concepts (10–15 minutes)
3. Hands-on / applied practice (15–20 minutes)
4. Output artifact + recap (2–5 minutes)

## Repository Layout (Current)

* `docs/` — plans, meetup material, and session write-ups
* `src/` — organized by GitHub Foundations exam domains:
  * `01_github-basics/` — Core GitHub concepts
  * `02_working-with-repositories/` — Branching, commits, merges
  * `03_collaboration/` — PRs, reviews, issues
  * `04_github-tools/` — Actions, Pages, Marketplace
  * `05_security-and-best-practices/` — Permissions, secrets, protection
  * `06_open-source-and-community/` — Licenses, OSS workflows
  * `labs/` — Hands-on exercises
  * `notes/` — Exam tips, glossary, common mistakes
  * `resources/` — Official links, practice questions, cheat sheets
  * `progress/` — Milestones, study log, readiness tracking
* `source-material/` — staging area for imported/raw notes (git-ignored)

## Learning Roadmap (Sessions)

Based on the GitHub Foundations Certification exam domains and meetup sessions. The number of sessions is flexible and can expand as needed to cover all exam domains comprehensively.

### 01. Introduction to Git and GitHub

Focus: Version control fundamentals, Git basics, and GitHub essentials.

Deliverable: Git basics cheat sheet + first repository creation notes.

### 02. GitHub for Teams: Practical Management & Collaboration Skills

Focus: Collaborative workflows, repository settings, and team management.

Deliverable: Team collaboration workflow diagram + repository settings checklist.

### 03. Working with Repositories: Branching and Merging

Focus: Branching strategies, commits, history, and merge workflows.

Deliverable: Branching strategy guide + merge conflict resolution notes.

### 04. Pull Requests and Code Reviews

Focus: PR workflow, review process, and best practices.

Deliverable: PR workflow diagram + code review checklist.

### 05. GitHub Actions and Automation

Focus: Workflows, CI/CD basics, and automation patterns.

Deliverable: Basic workflow example + automation decision tree.

### 06. GitHub Pages and Publishing

Focus: Static site hosting, deployment, and publishing workflows.

Deliverable: Pages deployment guide + publishing checklist.

### 07. Security and Best Practices

Focus: Permissions, branch protection, secrets management, and security scanning.

Deliverable: Security best practices checklist + branch protection guide.

### 08. Open Source and Community

Focus: Licenses, contributing guidelines, code of conduct, and OSS workflows.

Deliverable: OSS contribution guide + license decision tree.

### Additional Sessions

Additional sessions can be added as needed to:
- Deep dive into specific exam domains
- Cover advanced topics
- Provide additional hands-on practice
- Address specific learning needs

## Folder Mapping (Planned)

**All learning content is organized in `src/` by exam domains** - this is the single source of truth for learning materials.

Session content is organized into the appropriate `src/` domain folders based on the exam domains covered:

* Session 01 (Git & GitHub Intro) → `src/01_github-basics/`
* Session 02 (Teams & Collaboration) → `src/03_collaboration/`
* Session 03 (Branching & Merging) → `src/02_working-with-repositories/`
* Session 04 (Pull Requests) → `src/03_collaboration/`
* Session 05 (GitHub Actions) → `src/04_github-tools/`
* Session 06 (GitHub Pages) → `src/04_github-tools/`
* Session 07 (Security) → `src/05_security-and-best-practices/`
* Session 08 (Open Source) → `src/06_open-source-and-community/`

**Note**: `docs/sessions/` is kept minimal - it contains session metadata and overviews that link to `src/` content. The actual learning content lives in `src/` organized by exam domains.

## Next Steps

1. Convert Session 01 and Session 02 source materials into learning content in `src/` organized by exam domains.
2. Create session overview files in `docs/sessions/` that link to `src/` content (optional - for session-based navigation).
3. Add a small, consistent content template for `src/` domain files (so every topic feels uniform).
4. Expand the root README once content exists (so the repo has a solid entry point).
5. Create lab exercises for each session in `src/labs/`.
6. Build out exam preparation materials in `src/notes/` and `src/resources/`.

