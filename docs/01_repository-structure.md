# Repository Structure

**Version**: 2.0  
**Last Updated**: December 24, 2025  
**Purpose**: Single source of truth for repository structure

> **Note**: This document should be referenced from `.github/copilot-instructions.md`, `.cursor/rules/02_repository-structure.mdc`, `README.md`, and other documentation files. When the structure changes, update this file first, then update references.

---

## Complete Repository Structure

```text
github-foundations-in-practice/
│
├── README.md
├── LICENSE
├── CONTRIBUTING.md
├── SECURITY.md
├── .gitignore
├── lychee.toml
│
├── src/
│   ├── 01_github-basics/
│   │   ├── README.md
│   │   ├── concepts.md
│   │   ├── git-vs-github.md
│   │   ├── repositories.md
│   │   └── markdown-basics.md
│   │
│   ├── 02_working-with-repositories/
│   │   ├── README.md
│   │   ├── cloning-forking.md
│   │   ├── commits-history.md
│   │   ├── branching-strategies.md
│   │   └── merging-rebasing.md
│   │
│   ├── 03_collaboration/
│   │   ├── README.md
│   │   ├── pull-requests.md
│   │   ├── code-reviews.md
│   │   ├── issues-projects.md (includes Project Management: Projects, Boards, Milestones)
│   │   └── discussions.md
│   │
│   ├── 04_github-tools/
│   │   ├── README.md
│   │   ├── github-actions.md
│   │   ├── workflows-basics.md
│   │   ├── marketplace.md
│   │   └── github-pages.md
│   │
│   ├── 05_security-and-best-practices/
│   │   ├── README.md
│   │   ├── permissions-roles.md
│   │   ├── branch-protection.md
│   │   ├── secrets-management.md
│   │   └── code-scanning-overview.md
│   │
│   ├── 06_open-source-and-community/
│   │   ├── README.md
│   │   ├── open-source-basics.md
│   │   ├── licenses.md
│   │   ├── contributing-guidelines.md
│   │   └── code-of-conduct.md
│   │
│   ├── labs/
│   │   ├── lab-01-create-repo.md
│   │   ├── lab-02-pull-request.md
│   │   ├── lab-03-actions-workflow.md
│   │   └── lab-04-pages-deployment.md
│   │
│   ├── notes/
│   │   ├── common-mistakes.md
│   │   ├── exam-tips.md
│   │   └── glossary.md
│   │
│   ├── exam-prep/
│   │   ├── README.md
│   │   ├── 01_key-definitions.md
│   │   ├── 02_trick-questions.md
│   │   └── 03_exam-mindset.md
│   │
│   ├── progress/
│   │   ├── milestones.md
│   │   ├── study-log.md
│   │   └── exam-readiness-checklist.md
│   │
│   └── resources/
│       ├── official-links.md
│       ├── practice-questions.md
│       └── cheat-sheets.md
│
├── docs/
│   ├── 01_repository-structure.md (this file)
│   ├── 02_master-plan.md
│   ├── 03_session-overview.md
│   ├── images/
│   ├── meetup/
│   │   ├── .gitkeep
│   │   ├── 01_meetup-introduction-git-github.md
│   │   ├── 02_meetup-github-for-teams.md
│   │   └── sessions.md
│   ├── images/
│   │   └── .gitkeep
│   ├── meetup/
│   │   ├── .gitkeep
│   │   ├── 01_meetup-introduction-git-github.md
│   │   ├── 02_meetup-github-for-teams.md
│   │   └── sessions.md
│   ├── reviews/
│   │   └── .gitkeep
│   ├── review-reports/
│   │   └── .gitkeep
│   ├── sessions/
│   │   ├── .gitkeep
│   │   └── README.md (session metadata and navigation - links to src/ content)
│   └── templates/
│       └── .gitkeep
│
└── source-material/
    └── README.md
```

---

## Key Structure Notes

### File Naming Conventions

- **Domain Folders** (`src/01_github-basics/` through `src/06_open-source-and-community/`):
  - ✅ Use zero-padded numeric prefixes: `01_`, `02_`, etc.
  - ✅ Use hyphens for multi-word names: `01_github-basics/`
  - ✅ Content files use descriptive names: `concepts.md`, `pull-requests.md`

- **Labs** (`src/labs/`):
  - ✅ Use numbered lab files: `lab-01-create-repo.md`
  - ✅ Each lab includes objective, steps, and expected outcome

- **Notes** (`src/notes/`):
  - ✅ Use descriptive names: `common-mistakes.md`, `exam-tips.md`, `glossary.md`

- **Resources** (`src/resources/`):
  - ✅ Use logical names: `official-links.md`, `practice-questions.md`, `cheat-sheets.md`

### Content Organization

1. **Learning Progression**: Content follows GitHub Foundations exam domains (01 → 06)
2. **Hands-On Practice**: Labs provide practical exercises
3. **Reference Materials**: Notes and resources support learning
4. **All Content Under `src/`**: All learning materials, labs, notes, progress, and resources are organized under the `src/` directory

### Special Directories

- **`src/progress/`**: Tracks learning milestones and exam readiness
- **`docs/`**: Additional documentation, images, and session notes
- **`source-material/`**: Staging area for source content (git-ignored)
  - Raw source materials placed here before migration
  - Files are transformed and migrated to `src/` following content rules
  - Source files remain after migration (user deletes manually)

---

## Update Protocol

**When repository structure changes**:

1. ✅ **Update this file first** (`docs/01_repository-structure.md`)
2. ✅ **Update references** in:
   - `.github/copilot-instructions.md` - Reference this file
   - `.cursor/rules/02_repository-structure.mdc` - Reference this file
   - `README.md` - Reference this file
3. ✅ **Verify consistency** across all documentation

**Self-Check Question**: "Did I update `docs/01_repository-structure.md` first?" - If no, STOP and do it NOW.

---

## References

- **Repository Structure**: This file (`docs/01_repository-structure.md`)
- **Learning Path**: `README.md`
- **GitHub Copilot Instructions**: `.github/copilot-instructions.md`
