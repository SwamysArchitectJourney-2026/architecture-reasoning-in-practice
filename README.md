# Architecture Reasoning in Practice – Learning Journey

[![License](https://img.shields.io/badge/License-MIT-purple)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Active-success)](https://github.com/Swamy-s-Tech-Skills-Academy-2026/architecture-reasoning-in-practice)
[![Architecture Reasoning](https://img.shields.io/badge/Architecture-Reasoning-orange)](https://github.com/Swamy-s-Tech-Skills-Academy-2026/architecture-reasoning-in-practice)
![Format](https://img.shields.io/badge/Format-25%20Minutes-yellow)
![Built with](https://img.shields.io/badge/Built%20with-GitHub%20Copilot-brown)
[![Maintainer](https://img.shields.io/badge/Maintainer-Viswanatha%20Swamy%20P%20K-blue)](https://github.com/Swamy-s-Tech-Skills-Academy-2026)

**Repository**: [architecture-reasoning-in-practice](https://github.com/Swamy-s-Tech-Skills-Academy-2026/architecture-reasoning-in-practice)

> **⚠️ IMPORTANT: This is NOT an official course or syllabus. This is Swamy's personal learning journey and study materials.**

**Purpose**: Develop architectural reasoning and decision-making skills for senior technical roles.

This repository focuses on **how to think**, not just what to know.

---

## 📌 Disclaimer

This is **Swamy's personal learning** repository and reference workspace, not official course material or a packaged curriculum.

---

## 📑 Table of Contents

- [Who This Is For / Who This Is Not For](#-who-this-is-for--who-this-is-not-for)
- [What This Repository Covers](#-what-this-repository-covers)
- [Repository Structure Overview](#-repository-structure-overview)
- [How to Use This Repository](#-how-to-use-this-repository)
- [Quick Start](#-quick-start)
- [Related Repositories](#-related-repositories)
- [Key Principles](#-key-principles)
- [Folder Contracts](#-folder-contracts)
- [Success Criteria](#-success-criteria)
- [Structure Lock](#-structure-lock)
- [Resources](#-resources)
- [Status](#-status)
- [Development & Quality Assurance](#️-development--quality-assurance)
- [Contributing](#-contributing)
- [About & Community](#-about--community)
- [License](#-license)

---

## 👥 Who This Is For / Who This Is Not For

### ✅ Who This Is For

- Software Architects preparing for senior roles
- Principal Engineers developing architectural judgment
- Staff Engineers building reasoning skills
- Senior engineers transitioning to architect roles
- Anyone wanting to build architectural maturity

### ❌ Who This Is Not For

- Those seeking official course materials or certification guides
- People looking for a complete, ready-to-use curriculum (this is a personal learning journey)
- Those who want passive learning without practice
- Anyone expecting system design solutions (see `system-design-in-practice` instead)

---

## 🎯 What This Repository Covers

**This IS:**

- A professional reasoning system for senior engineers
- Structured thinking frameworks
- Role-specific preparation guides
- Evaluation practice materials
- A place to build architectural judgment

**This is NOT:**

- A course or official curriculum
- A collection of system design solutions
- A replacement for hands-on experience
- An evaluation cheat sheet

### Core Topics

- **System Thinking**: Problem framing, clarification strategies, decision rationale
- **Trade-offs**: Cost vs scale, simplicity vs flexibility, consistency vs availability
- **Constraints**: Assumptions, constraints modeling, failure resilience
- **Communication**: Structured answers, top-down communication, depth control
- **Role-Specific**: Architect, Principal Engineer, Staff Engineer readiness
- **Evaluation**: Practice scenarios, leadership situations, failure stories

---

## 🗂 Repository Structure Overview

> **📋 Single Source of Truth**: The complete and up-to-date repository structure is maintained in [`src/FOLDER_CONTRACTS.md`](src/FOLDER_CONTRACTS.md). This file should be referenced for the authoritative structure.

### Quick Structure Overview

```text
src/
├── 01_orientation/          → Start here - Context and how to use
├── 02_thinking/             → How to reason (role-agnostic)
├── 03_communication/        → How to explain decisions
├── 04_roles/                → Role-specific scope and readiness
│   ├── architect/
│   ├── principal-engineer/
│   └── staff-engineer/
├── 05_evaluation/           → Practice scenarios
│   ├── system-design/
│   └── leadership-scenarios/
├── 06_reference/            → Quick lookup (terminology, patterns)
└── 07_notes/                → Temporary ideas (quarantine)
```

**Progressive by capability:**

1. **Orientation** → Clarity
2. **Thinking** → Judgment
3. **Communication** → Articulation
4. **Roles** → Scope
5. **Evaluation** → Confidence

For the complete repository structure with folder contracts, see: **[`src/FOLDER_CONTRACTS.md`](src/FOLDER_CONTRACTS.md)**

---

## 🚀 How to Use This Repository

### Recommended Learning Path

1. **Start with Orientation** (`src/01_orientation/`)
   - Read `README.md` for repository overview
   - Understand role comparison
   - Learn the repository structure

2. **Build Thinking Foundations** (`src/02_thinking/`)
   - Study system thinking frameworks
   - Learn trade-off analysis
   - Understand constraints and failure resilience

3. **Develop Communication Skills** (`src/03_communication/`)
   - Practice structured answers
   - Learn top-down communication
   - Master depth control

4. **Choose Your Role Path** (`src/04_roles/`)
   - Review role-specific README
   - Complete readiness checklist
   - Understand role scope and accountability

5. **Practice with Scenarios** (`src/05_evaluation/`)
   - Work through system design scenarios
   - Practice leadership situations
   - Apply to `system-design-in-practice/`

6. **Reference as Needed** (`src/06_reference/`)
   - Use for quick lookup only
   - Never study end-to-end
   - Just-in-time recall

---

## 🎯 Quick Start

### For Architects

1. Read `src/01_orientation/README.md`
2. Study `src/02_thinking/` (foundations)
3. Review `src/04_roles/architect/README.md`
4. Complete `src/04_roles/architect/readiness-checklist.md`
5. Practice with `src/05_evaluation/system-design/architect/`

### For Principal Engineers

1. Read `src/01_orientation/README.md`
2. Study `src/02_thinking/` (foundations)
3. Review `src/04_roles/principal-engineer/README.md`
4. Complete `src/04_roles/principal-engineer/readiness-checklist.md`
5. Practice with `src/05_evaluation/system-design/principal-engineer/`

### For All Roles

Start with `src/01_orientation/README.md` for full guidance.

---

## 🔗 Related Repositories

### `system-design-in-practice`

**Relationship:**

- **Reasoning** lives here (`architecture-reasoning-in-practice`)
- **Application** lives there (`system-design-in-practice`)

**Workflow:**

1. Learn how to think → `architecture-reasoning-in-practice/02_thinking/`
2. Learn what your role owns → `architecture-reasoning-in-practice/04_roles/`
3. Apply thinking to full designs → `system-design-in-practice/07_case-studies/`
4. Reflect and refine → back to reasoning repository

**No duplication. No mirroring.**

See [`src/CROSS_REPO_STUDY_FLOW.md`](src/CROSS_REPO_STUDY_FLOW.md) for detailed workflow.

---

## 📋 Key Principles

### Progressive Disclosure

- Start with orientation
- Build thinking foundations
- Learn role-specific scope
- Practice with scenarios
- Reference materials as needed

### Role-Centric

- Clear separation by role
- Role-specific readiness checklists
- No role overlap

### Professional Framing

- Readiness-based, not evaluation-focused
- Architectural maturity, not exam prep
- Real-world decision making

---

## 📚 Folder Contracts

Each folder has a **contract** that defines its purpose and rules.

**Rule**: If content violates a folder's contract, it goes to `07_notes/` or gets deleted.

See [`src/FOLDER_CONTRACTS.md`](src/FOLDER_CONTRACTS.md) for detailed contracts.

---

## ✅ Success Criteria

You're ready when you can:

- Explain architectural decisions with clear trade-offs
- Handle ambiguous requirements with structured thinking
- Communicate effectively with technical and non-technical audiences
- Make long-term decisions considering system-wide impact
- Balance competing requirements and quality attributes

---

## 🔒 Structure Lock

**This structure is frozen.**

- ✅ Structure: Locked
- ✅ Folder contracts: Defined
- ✅ Cross-repo relationship: Clear

**Only content changes, not structure.**

Review structure every 30-60 days for contract violations, not daily.

See [`STRUCTURE_LOCKED.md`](STRUCTURE_LOCKED.md) for details.

---

## 🔗 Resources

### Repository Resources

- **Folder Contracts**: [`src/FOLDER_CONTRACTS.md`](src/FOLDER_CONTRACTS.md) - Detailed folder contracts and rules
- **Cross-Repo Flow**: [`src/CROSS_REPO_STUDY_FLOW.md`](src/CROSS_REPO_STUDY_FLOW.md) - How to use with `system-design-in-practice`
- **Orientation**: [`src/01_orientation/README.md`](src/01_orientation/README.md) - Getting started guide
- **Role Guides**: [`src/04_roles/[role]/README.md`](src/04_roles/) - Role-specific preparation guides
- **Reference Materials**: [`src/06_reference/`](src/06_reference/) - Terminology, patterns, skills matrix

---

## 🚧 Status

This repository is **actively evolving** as I progress through architectural reasoning development.

---

## 🛠️ Development & Quality Assurance

### Documentation Quality Checks (Local)

Run Markdown lint against README and all documentation before opening a PR:

```bash
# From repo root - lint all markdown files
npx --yes markdownlint-cli2 "README.md" "docs/**/*.md" "src/**/*.md" ".github/**/*.md"
```

This uses the repository's `.markdownlint.json` configuration automatically.

### Link Validation (Lychee)

Run link checker to validate all links in documentation:

```bash
# Validate all links (recommended; matches CI behavior)
docker run --rm -w /input -v "${PWD}:/input" lycheeverse/lychee:latest --config lychee.toml --no-progress README.md docs/**/*.md src/**/*.md .github/**/*.md
```

### Pre-Commit Checklist

Before committing changes:

- [ ] Run markdownlint and fix any issues
- [ ] Run Lychee link checker (if Docker available)
- [ ] Verify all file references point to existing files
- [ ] Check that code fences have language specifications
- [ ] Ensure proper blank lines around headings and lists

---

## 🤝 Contributing

Contributions are welcome and encouraged. You may contribute in the following ways:

- Bug fixes and corrections
- Documentation improvements
- New learning content or explanations
- Additional scenarios or examples
- Curated learning resources
- Tooling, scripts, or automation enhancements

Please review [CONTRIBUTING.md](CONTRIBUTING.md) for detailed contribution guidelines.

---

## 📞 About & Community

### [Swamy's Tech Skills Academy](https://www.linkedin.com/company/swamy-s-tech-skills-academy) & [ShyvnTech](https://www.linkedin.com/company/shyvntech)

This repository is stewarded and supported by **Swamy's Tech Skills Academy** and **ShyvnTech**. It is focused on helping developers and senior engineers develop architectural reasoning and decision-making skills through structured thinking frameworks and role-specific preparation.

You can connect with the community to:

- Follow structured learning journeys and deep-dive content
- Participate in knowledge-sharing discussions
- Explore mentoring, workshops, and custom training opportunities

---

## 📝 Attribution

All content in this repository is original and transformative. While inspired by various learning sources, the explanations, examples, and frameworks are created from first principles to provide a unique learning experience.

---

## 📜 License

This project is licensed under the [MIT License](LICENSE). See the [LICENSE](LICENSE) file for details.

---

> 🎓 **Architecture Reasoning in Practice** — Designed and maintained by `Viswanatha Swamy P K`
> Empowering developers to develop architectural reasoning and excel in senior technical roles.
> © 2025 Swamy's Tech Skills Academy, ShyvnTech & Srivari Software Solutions
