# Architecture Reasoning in Practice

[![License](https://img.shields.io/badge/License-MIT-purple)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Active-success)](https://github.com/Swamy-s-Tech-Skills-Academy-2026/architecture-reasoning-in-practice)
[![Architecture](https://img.shields.io/badge/Architecture-Reasoning-orange)](https://github.com/Swamy-s-Tech-Skills-Academy-2026/architecture-reasoning-in-practice)
![Format](https://img.shields.io/badge/Format-Practice%20Log-yellow)
![Built with](https://img.shields.io/badge/Built%20with-GitHub%20Copilot-brown)
[![Maintainer](https://img.shields.io/badge/Maintainer-Viswanatha%20Swamy%20P%20K-blue)](https://github.com/Swamy-s-Tech-Skills-Academy-2026)

**Repository**: [architecture-reasoning-in-practice](https://github.com/Swamy-s-Tech-Skills-Academy-2026/architecture-reasoning-in-practice)

> **⚠️ IMPORTANT: This is NOT a course or official curriculum. This is Swamy's personal learning journey and practice log.**

This repository documents hands-on practice in **architectural reasoning** across senior and staff-level technical roles. The focus is on **how senior people think, reason, and communicate** when facing ambiguous and open-ended problems.

The goal of this repo is to develop **architectural judgment and decision-making capability** through structured practice in reasoning, articulation, and evaluation.

This repository develops reasoning and decision articulation skills used in senior technical evaluations, real-world technical discussions, design panels, and leadership decision contexts. It focuses on how to think and communicate, not what answer to produce.

> **📋 Important Distinction**: This repository focuses on reasoning and articulation. Detailed system designs and implementations live in `system-design-in-practice`.

---

## 📌 Disclaimer

This is **Swamy's personal learning** repository and practice log, not official course material or a packaged curriculum.

---

## 🚀 Quick Start

1. **Read** `src/01_orientation/README.md` - How to use this repository
2. **Choose** your role in `src/01_orientation/role-comparison.md`
3. **Follow** your role path in `src/04_roles/[your-role]/README.md`
4. **Study** thinking frameworks in `src/02_thinking/`
5. **Practice** scenarios in `src/05_evaluation/`

---

## 📑 Repository Structure

```
src/
├── 01_orientation/          ← Start here - How to use this repo
├── 02_thinking/             ← How to think (role-agnostic)
├── 03_communication/        ← How to explain decisions
├── 04_roles/               ← Role-specific preparation
│   ├── architect/
│   ├── principal-engineer/
│   ├── staff-engineer/
│   └── engineering-manager/
├── 05_evaluation/           ← Practice scenarios
│   ├── system-design/
│   ├── leadership-scenarios/
│   └── scenario-walkthroughs/
├── 06_reference/           ← Lookup materials
└── 07_notes/               ← Personal scratchpad
```

**See** `src/01_orientation/README.md` for detailed navigation.

---

## 👥 Who This Is For

### ✅ Who This Is For

- Senior Software Engineers
- Principal Software Engineers
- Staff Engineers
- Software Architects
- Solution Architects
- AI Architects
- Engineering Managers
- Principal Consultants
- Professionals wanting to develop architectural judgment and decision-making skills

### ❌ Who This Is Not For

- Those seeking official course materials or structured curriculum
- People looking for a complete, ready-to-use course (this is a personal practice log)
- Those who want passive learning without hands-on practice
- Anyone expecting step-by-step tutorials (this focuses on reasoning and decision-making)
- Those seeking detailed system design walkthroughs (see `system-design-in-practice` instead)

---

## 🎓 Focus Areas

This repository focuses on developing skills in:

| Focus Area | Description | Location |
|------------|-------------|----------|
| **System Thinking** | Problem framing, clarification strategies, constraints | `src/02_thinking/system-thinking/` |
| **Trade-off Analysis** | Cost vs scale, simplicity vs flexibility, risk framing | `src/02_thinking/tradeoffs/` |
| **Communication** | Top-down communication, structured answers, decision narratives | `src/03_communication/` |
| **Role Readiness** | Architect, Principal Engineer, Staff Engineer, Engineering Manager | `src/04_roles/` |
| **Evaluation Practice** | System design scenarios, leadership scenarios, walkthroughs | `src/05_evaluation/` |

> **Note**: Content is organized by **thinking modes and role readiness**, not topics or systems.

---

## 🎯 Objectives

- Develop structured thinking approaches for architectural problems
- Master trade-off analysis and decision-making frameworks
- Improve communication of architectural decisions
- Practice reasoning and articulation under evaluation
- Achieve role readiness through structured preparation

---

## 🧭 Learning Structure

Content is organized to support:

- **Thinking Frameworks** (`02_thinking/`): How to frame problems, analyze trade-offs, reason about constraints
- **Communication** (`03_communication/`): How to organize and communicate solutions effectively
- **Role Preparation** (`04_roles/`): Role-specific knowledge, responsibilities, and readiness checklists
- **Practice** (`05_evaluation/`): Scenarios for system design, leadership, and real-world challenges

---

## 🧪 Evaluation Scenarios

Evaluation scenarios provide hands-on experience with architectural reasoning:

- System design challenges
- Leadership and conflict scenarios
- Legacy modernization problems
- Ambiguous and open-ended situations

Each scenario focuses on:

- **Problem Framing**: How to structure and understand the challenge
- **Clarifying Questions**: What to ask and why
- **Structured Reasoning**: How to think through the problem
- **Trade-offs**: How to evaluate options
- **Communication**: How to explain solutions effectively

See `src/05_evaluation/` for practice scenarios.

---

## 📝 Notes & Insights

Key takeaways, patterns, and insights are maintained across folders:

- Architectural reasoning patterns
- Common decision-making frameworks
- Communication techniques
- Analysis methodologies

**Reference Materials**: See `src/06_reference/` for:
- Architecture patterns
- Cloud reference
- Terminology
- Reading lists

---

## 🔗 Resources

### Repository Resources

- `src/06_reference/` - Architecture patterns, cloud reference, terminology, reading lists
- `src/01_orientation/` - How to use this repository, role comparison, learning strategies

### External Resources

See `src/06_reference/reading-list.md` for curated study references.

---

## 🚧 Status

This repository is **actively evolving** as a personal practice log for architectural reasoning.

---

## 🛠️ Development & Quality Assurance

### Documentation Quality Checks (Local)

Run Markdown lint against README and all documentation before opening a PR:

```bash
# From repo root - lint all markdown files
npx --yes markdownlint-cli2 "README.md" "src/**/*.md" ".github/**/*.md"
```

This uses the repository's `.markdownlint.json` configuration automatically.

### Link Validation (Lychee)

Run link checker to validate all links in documentation:

```bash
# Validate all links (recommended; matches CI behavior)
docker run --rm -w /input -v "${PWD}:/input" lycheeverse/lychee:latest --config lychee.toml --no-progress README.md src/**/*.md .github/**/*.md
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

**Please review** [CONTRIBUTING.md](CONTRIBUTING.md) for detailed contribution guidelines and structure rules.

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
