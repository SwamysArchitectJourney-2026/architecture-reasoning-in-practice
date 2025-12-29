# Session Index Dashboard

This document provides detailed information about each learning session, including modules, learning outcomes, and navigation.

**Repository**: `github-foundations-in-practice`  
**Format**: 30-60 minute focused sessions  
**Approach**: Exam-focused, hands-on practice for GitHub Foundations Certification

> **📋 Session Overview**: For the complete session roadmap, status table, and progression diagram, see the [Session Overview](../03_session-overview.md) (single source of truth).

> **📁 Content Location**: All actual learning content is organized in [`src/`](../../src/) by exam domains. This folder contains session overviews and metadata that link to `src/` content.

---

## Session Details

### Session 01: Introduction to Git and GitHub 🔄

**Status**: Draft  
**Content Location**: [`src/01_github-basics/`](../../src/01_github-basics/)  
**Session Overview**: *Planned* (optional - links to `src/` content)

**Learning Outcomes**:
- Understand version control fundamentals and why Git matters
- Create repositories and track changes effectively
- Navigate GitHub essentials: repositories, issues, pull requests, discussions
- Execute GitHub Flow: clone, branch, push, and merge workflows

**Deliverable**: Git basics cheat sheet + first repository creation notes

**Prerequisites**: None (starting point)

**Enables**: Session 02

---

### Session 02: GitHub for Teams: Practical Management & Collaboration Skills 🔄

**Status**: Draft  
**Content Location**: [`src/03_collaboration/`](../../src/03_collaboration/)  
**Session Overview**: *Planned* (optional - links to `src/` content)

**Learning Outcomes**:
- Explain collaborative workflows in GitHub (Issues → Branches → PRs → Merge)
- Configure essential repository settings (visibility, collaborators, branch protection awareness)
- Navigate key UI areas: Code, Issues, Pull Requests, Actions, Insights
- Use GitHub Desktop to clone, commit, and sync changes

**Deliverable**: Team collaboration workflow diagram + repository settings checklist

**Prerequisites**: Session 01

**Enables**: Sessions 03, 04

---

### Session 03: Working with Repositories: Branching and Merging 📋

**Status**: Planned  
**Content Location**: [`src/02_working-with-repositories/`](../../src/02_working-with-repositories/)  
**Focus**: Branching strategies, commits, history, and merge workflows

**Deliverable**: Branching strategy guide + merge conflict resolution notes

**Prerequisites**: Session 02

**Enables**: Session 04

---

### Session 04: Pull Requests and Code Reviews 📋

**Status**: Planned  
**Content Location**: [`src/03_collaboration/`](../../src/03_collaboration/)  
**Focus**: PR workflow, review process, and best practices

**Deliverable**: PR workflow diagram + code review checklist

**Prerequisites**: Session 03

**Enables**: Session 05

---

### Session 05: GitHub Actions and Automation 📋

**Status**: Planned  
**Content Location**: [`src/04_github-tools/`](../../src/04_github-tools/)  
**Focus**: Workflows, CI/CD basics, and automation patterns

**Deliverable**: Basic workflow example + automation decision tree

**Prerequisites**: Session 04

**Enables**: Session 06

---

### Session 06: GitHub Pages and Publishing 📋

**Status**: Planned  
**Content Location**: [`src/04_github-tools/`](../../src/04_github-tools/)  
**Focus**: Static site hosting, deployment, and publishing workflows

**Deliverable**: Pages deployment guide + publishing checklist

**Prerequisites**: Session 05

**Enables**: Session 07

---

### Session 07: Security and Best Practices 📋

**Status**: Planned  
**Content Location**: [`src/05_security-and-best-practices/`](../../src/05_security-and-best-practices/)  
**Focus**: Permissions, branch protection, secrets management, and security scanning

**Deliverable**: Security best practices checklist + branch protection guide

**Prerequisites**: Session 06

**Enables**: Session 08

---

### Session 08: Open Source and Community 📋

**Status**: Planned  
**Content Location**: [`src/06_open-source-and-community/`](../../src/06_open-source-and-community/)  
**Focus**: Licenses, contributing guidelines, code of conduct, and OSS workflows

**Deliverable**: OSS contribution guide + license decision tree

**Prerequisites**: Session 07

**Enables**: Additional sessions as needed

---

> **📋 For session roadmap, status table, and learning flow**: See [Session Overview](../03_session-overview.md)

---

## Quick Navigation

### By Status

- **Draft**: Sessions 01-02
- **Planned**: Sessions 03-08

### By Learning Stage

- **Foundation Sessions (1-2)**: Build Git/GitHub fundamentals and understand collaboration
- **Practice Sessions (3-4)**: Master repository operations and pull request workflows
- **Tools Sessions (5-6)**: Automate with Actions and publish with Pages
- **Advanced Sessions (7-8)**: Secure repositories and contribute to open source

---

## Contributing New Sessions

When creating new sessions:

1. **Create content in `src/`** organized by exam domain (e.g., `src/01_github-basics/`, `src/03_collaboration/`)
2. **Optionally create session overview** in `docs/sessions/` that links to `src/` content
3. Update this README with session details and content location
4. Ensure all prerequisites are complete
5. Add proper YAML frontmatter with learning objectives (if applicable)

**Important**: All actual learning content goes in `src/` organized by exam domains. `docs/sessions/` is for session metadata and navigation only.

See [CONTRIBUTING.md](../../CONTRIBUTING.md) for detailed guidelines.

---

## Related Resources

- **Session Overview**: [`../03_session-overview.md`](../03_session-overview.md) - **Single source of truth** for session roadmap and status
- **Master Plan**: [`../02_master-plan.md`](../02_master-plan.md)
- **Session Template**: [`../templates/session-template.md`](../templates/session-template.md) (if exists)
- **Repository Structure**: [`../01_repository-structure.md`](../01_repository-structure.md)
- **Main README**: [`../../README.md`](../../README.md)

---

**Last Updated**: December 28, 2025  
**Maintainer**: Swamy

> **Note**: For session roadmap and status, see [`../03_session-overview.md`](../03_session-overview.md) (single source of truth).

