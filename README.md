# Architecture Reasoning in Practice

[![License](https://img.shields.io/badge/License-MIT-purple)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Active-success)](https://github.com/Swamy-s-Tech-Skills-Academy-2026/architecture-reasoning-in-practice)
[![Architecture](https://img.shields.io/badge/Architecture-Reasoning-orange)](https://github.com/Swamy-s-Tech-Skills-Academy-2026/architecture-reasoning-in-practice)
![Format](https://img.shields.io/badge/Format-Practice%20Log-yellow)
![Built with](https://img.shields.io/badge/Built%20with-GitHub%20Copilot-brown)
[![Maintainer](https://img.shields.io/badge/Maintainer-Viswanatha%20Swamy%20P%20K-blue)](https://github.com/Swamy-s-Tech-Skills-Academy-2026)

**Repository**: [architecture-reasoning-in-practice](https://github.com/Swamy-s-Tech-Skills-Academy-2026/architecture-reasoning-in-practice)

> **⚠️ IMPORTANT: This is NOT a course or official curriculum. This is Swamy's personal learning journey and practice log.**

This repository documents hands-on practice in **architectural reasoning** across senior and staff-level technical roles. The focus is on structured thinking, trade-off analysis, and clear communication of decisions in ambiguous and open-ended scenarios.

The goal of this repo is to develop **real-world architectural judgment and decision-making capability** through structured practice and analysis.

---

## 📌 Disclaimer

This is **Swamy's personal learning** repository and practice log, not official course material or a packaged curriculum.

---

## 📑 Table of Contents

- [Who This Is For / Who This Is Not For](#-who-this-is-for--who-this-is-not-for)
- [Focus Areas](#-focus-areas)
- [How to Use This Repository](#-how-to-use-this-repository)
- [Objectives](#-objectives)
- [Learning Structure](#-learning-structure)
- [Repository Structure Overview](#-repository-structure-overview)
- [Practice Scenarios](#-practice-scenarios)
- [Notes & Insights](#-notes--insights)
- [Resources](#-resources)
- [Status](#-status)
- [Development & Quality Assurance](#️-development--quality-assurance)
- [Contributing](#-contributing)
- [About & Community](#-about--community)
- [License](#-license)

---

## 👥 Who This Is For / Who This Is Not For

### ✅ Who This Is For

- Senior Software Engineers
- Principal Software Engineers
- Staff Engineers
- Software Architects
- Solution Architects
- AI Architects
- Engineering Managers
- Principal Consultants
- Anyone preparing for senior/staff-level technical interviews
- Professionals wanting to develop architectural judgment and decision-making skills

### ❌ Who This Is Not For

- Those seeking official course materials or structured curriculum
- People looking for a complete, ready-to-use course (this is a personal practice log)
- Those who want passive learning without hands-on practice
- Anyone expecting step-by-step tutorials (this focuses on reasoning and decision-making)

---

## 🎓 Focus Areas

This repository focuses on developing skills in:

| Focus Area | Description | Practice Location |
|------------|-------------|-------------------|
| **Structured Thinking** | Systematic approaches to architectural problems | `src/` (to be organized) |
| **Trade-off Analysis** | Evaluating options and making informed decisions | `src/` (to be organized) |
| **Clear Communication** | Articulating architectural decisions effectively | `src/` (to be organized) |
| **Real-world Scenarios** | Practice with ambiguous and open-ended problems | `src/` (to be organized) |

> **Note**: Content is organized progressively as the practice log evolves. See [`docs/01_repository-structure.md`](docs/01_repository-structure.md) for the complete structure.

---

## 🚀 How to Use This Repository

### Recommended Learning Path

1. **Explore Practice Scenarios** (`src/`)
   - Review architectural problems and scenarios
   - Analyze trade-offs and decision points
   - Practice articulating solutions

2. **Study Notes & Insights** (`src/notes/`)
   - Review common patterns and approaches
   - Learn from analysis frameworks
   - Understand decision-making principles

3. **Use Supporting Materials**
   - `src/resources/` - Frameworks, reference materials, and tools
   - `docs/` - Documentation and planning materials

4. **Practice Regularly**
   - Work through scenarios systematically
   - Document your reasoning process
   - Review and refine your approach

---

## 🎯 Objectives

- Develop structured thinking approaches for architectural problems
- Master trade-off analysis and decision-making frameworks
- Improve communication of architectural decisions
- Build confidence for senior/staff-level technical interviews
- Maintain a reusable reference for architectural reasoning

---

## 🧭 Learning Structure

Content is organized to support:

- **Practice Scenarios**: Real-world architectural problems and decision-making exercises
- **Analysis Frameworks**: Structured approaches to evaluating options
- **Communication Techniques**: Methods for articulating decisions clearly
- **Reference Materials**: Tools and resources to support learning

---

## 🗂 Repository Structure Overview

> **📋 Single Source of Truth**: The complete and up-to-date repository structure is maintained in [`docs/01_repository-structure.md`](docs/01_repository-structure.md). This file should be referenced for the authoritative structure.

### Quick Structure Overview

```text
src/
└── (content to be organized by architectural reasoning topics)

docs/
├── 01_repository-structure.md  → Complete repository structure documentation
├── images/                      → Images and diagrams
└── review-reports/             → Review reports and analysis

source-material/                 → Staging area for raw materials (git-ignored)
```

For the complete repository structure with all file names and details, see: **[`docs/01_repository-structure.md`](docs/01_repository-structure.md)**

---

## 🧪 Practice Scenarios

Practice scenarios provide hands-on experience with architectural reasoning:

- Real-world architectural problems
- Ambiguous and open-ended scenarios
- Trade-off analysis exercises
- Decision-making frameworks

Each scenario includes:

- **Problem Statement**: The architectural challenge
- **Context**: Background and constraints
- **Analysis Framework**: Structured approach to reasoning
- **Decision Points**: Key trade-offs to consider
- **Communication**: How to articulate the solution

See `src/` for practice scenarios (to be populated).

---

## 📝 Notes & Insights

Key takeaways, patterns, and insights are maintained under `src/notes/`:

- Architectural reasoning patterns
- Common decision-making frameworks
- Communication techniques
- Analysis methodologies

**Reference Materials**: See `src/resources/` for:

- Frameworks and tools
- Reference materials
- Best practices

---

## 🔗 Resources

### Official Resources

- **Architecture Patterns**: Industry-standard architectural patterns and practices
- **Decision Frameworks**: Structured approaches to architectural decision-making
- **Communication Guides**: Techniques for articulating architectural decisions

### Curated Study References

See `src/resources/` for complete list including:

- **Architectural Frameworks**: Reference materials and methodologies
- **Case Studies**: Real-world architectural decisions and outcomes
- **Best Practices**: Industry best practices and patterns

### Repository Resources

- `src/resources/` - Frameworks, tools, and reference materials (to be populated)
- `docs/` - Documentation and planning materials

---

## 🚧 Status

This repository is **actively evolving** as a personal practice log for architectural reasoning.

---

## 🛠️ Development & Quality Assurance

### Documentation Quality Checks (Local)

Run Markdown lint against README and all documentation before opening a PR:

```bash
# From repo root - lint all markdown files
npx --yes markdownlint-cli2 "README.md" "docs/**/*.md" ".github/**/*.md"
```

This uses the repository's `.markdownlint.json` configuration automatically.

### Link Validation (Lychee)

Run link checker to validate all links in documentation:

```bash
# Validate all links (recommended; matches CI behavior)
docker run --rm -w /input -v "${PWD}:/input" lycheeverse/lychee:latest --config lychee.toml --no-progress README.md docs/**/*.md .github/**/*.md
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
- New practice scenarios or exercises
- Additional case studies, examples, or diagrams
- Curated learning resources
- Tooling, scripts, or automation enhancements

Please review [CONTRIBUTING.md](CONTRIBUTING.md) for detailed contribution guidelines.

---

## 📞 About & Community

### [Swamy's Tech Skills Academy](https://www.linkedin.com/company/swamy-s-tech-skills-academy) & [ShyvnTech](https://www.linkedin.com/company/shyvntech)

This repository is stewarded and supported by **Swamy's Tech Skills Academy** and **ShyvnTech**. It is focused on helping senior engineers and architects develop architectural reasoning skills through structured practice and hands-on exercises.

You can connect with the community to:

- Follow structured learning journeys and deep-dive content
- Participate in knowledge-sharing discussions
- Explore mentoring, workshops, and custom training opportunities
- Develop architectural reasoning and decision-making capabilities

---

## 📜 License

This project is licensed under the [MIT License](LICENSE). See the [LICENSE](LICENSE) file for details.

---

> 🎓 **Architecture Reasoning in Practice** — Designed and maintained by `Viswanatha Swamy P K`
> Empowering senior engineers and architects to master architectural reasoning and excel in technical decision-making.
> © 2025 Swamy's Tech Skills Academy, ShyvnTech & Srivari Software Solutions
