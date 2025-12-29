# GitHub Copilot Instructions for GitHub Foundations Learning Journey

**Version**: 2.0  
**Last Updated**: December 25, 2025  
**Repository**: `github-foundations-in-practice`  
**Critical Principle**: Update this file IMMEDIATELY when repository structure changes

---

## 🎯 Repository Purpose

**GitHub Foundations Learning Journey** is a personal learning repository documenting the structured journey toward the **GitHub Foundations Certification**.

### What This Repository Provides

- **GitHub Basics**: Core concepts, terminology, Git vs GitHub, repositories, Markdown
- **Working with Repositories**: Cloning, forking, commits, branching, merging, rebasing
- **Collaboration**: Pull requests, code reviews, issues, projects, discussions
- **GitHub Tools**: Actions, workflows, Marketplace, Pages
- **Security & Best Practices**: Permissions, roles, branch protection, secrets, code scanning
- **Open Source & Community**: OSS basics, licenses, contributing guidelines, code of conduct
- **Hands-On Labs**: Practical exercises for creating repos, PRs, workflows, and Pages
- **Exam Preparation**: Study notes, tips, common mistakes, glossary, practice questions

### Target Audience

- Swamy (personal learning journey)
- Developers preparing for GitHub Foundations Certification
- Engineers learning GitHub fundamentals
- Teams adopting GitHub best practices

### Business Value

- Structured exam preparation
- Practical GitHub knowledge
- Hands-on experience through labs
- Comprehensive coverage of all exam domains

---

## 🎯 Primary Directives

### 1. GitHub Foundations Content Rules (MANDATORY)

**All content creation must follow these rules, with applicability based on content type:**

- **Domain Content** (`src/01_github-basics/`, `src/02_working-with-repositories/`, `src/03_collaboration/`, `src/04_github-tools/`, `src/05_security-and-best-practices/`, `src/06_open-source-and-community/`): File naming, zero-copy policy, file references (YAML frontmatter recommended, line limits recommended)
- **Labs** (`src/labs/`): Standard structure, zero-copy policy, numbered lab files
- **Notes** (`src/notes/`): Descriptive naming, no numbering required
- **Resources** (`src/resources/`): Logical naming, no numbering required

See: `.cursor/rules/01_educational-content-rules.mdc` for complete details and applicability.

### 2. Automation-First Approach

✅ **ALWAYS**: Create reusable PowerShell scripts for repetitive tasks  
✅ **ALWAYS**: Use existing scripts in `tools/psscripts/` first  
✅ **ALWAYS**: Enhance existing scripts rather than duplicating  
❌ **NEVER**: Execute individual commands for tasks repeated 2+ times

**Decision Tree**:

1. Check `tools/psscripts/` for existing script
2. Enhance existing script if close match
3. Create new `.ps1` for any repeated task
4. Document with examples and parameters

**Available Automation** (tools/psscripts/):

- `Get-FileStats.ps1` - File statistics analysis
- `Get-MarkdownSummary.ps1` - Markdown file analysis
- `Get-RepoStats.ps1` - Repository overview
- `Compare-DocFiles.ps1` - Compare multiple files
- `Find-DuplicateContent.ps1` - Find duplicate headings
- `Quick-HealthCheck.ps1` - Fast workspace health check

### 3. Update Verification Protocol (CRITICAL)

**After ANY structural change, IMMEDIATELY update**:

1. ✅ **`docs/01_repository-structure.md`** - **UPDATE THIS FIRST** (Single source of truth)
2. ✅ `.github/copilot-instructions.md` - Reference to `docs/01_repository-structure.md` (THIS FILE)
3. ✅ `README.md` - Reference to `docs/01_repository-structure.md`
4. ✅ `.cursor/rules/02_repository-structure.mdc` - Reference to `docs/01_repository-structure.md`
5. ✅ Relevant documentation files

**Self-Check Question**: "Did I update `docs/01_repository-structure.md` first?" - If no, STOP and do it NOW.

### 4. File Naming Validation (CRITICAL)

**Before creating or committing ANY numbered file, validate naming**:

1. ✅ **Check for `00_` prefix**: **NEVER ALLOWED** - Use `01_` instead
2. ✅ **Verify scope**: Rule applies to **ALL files** including:
   - Domain content (`src/01_github-basics/`, `src/02_working-with-repositories/`, etc.)
   - Documentation files (`docs/`)
   - Any numbered files anywhere in repository
3. ✅ **Quick validation**: Run `Get-ChildItem -Recurse -Filter "*00_*"` to find violations
4. ✅ **NO EXCEPTIONS**: `00_` is NEVER allowed, even for meta/documentation files

**Self-Check Question**: "Does this file use `00_` prefix?" - If yes, RENAME to `01_` or appropriate number.

### 5. Chain-of-Thought + ReAct + Reasoning

**Apply systematic reasoning to every task using this framework**:

#### Chain-of-Thought (CoT)

Break down complex problems into logical steps:

- **Decompose**: Split large tasks into smaller, manageable components
- **Sequential Logic**: Show clear progression from problem → solution
- **Explicit Reasoning**: Articulate WHY each step is necessary
- **Intermediate Steps**: Don't jump to conclusions; show the work

**Example**: "To consolidate docs, I need to: 1) Read all files, 2) Identify unique content, 3) Extract and merge, 4) Verify no loss, 5) Update references"

#### ReAct (Reasoning + Acting)

Interleave thinking with action in iterative cycles:

1. **OBSERVE** 🔍
   - Current state: What exists now?
   - User request: What is being asked?
   - Context: What's the broader situation?
   - Constraints: What limitations exist?

2. **ANALYZE** 🧠
   - Root cause: Why does this issue exist?
   - Dependencies: What else is affected?
   - Implications: What are the consequences?
   - Alternatives: What other approaches exist?

3. **PLAN** 📋
   - Step-by-step approach with clear milestones
   - Verification points at each step
   - Rollback strategy if issues arise
   - Resource requirements (scripts, tools, time)

4. **ACT** ⚡
   - Execute with automation where possible
   - Use existing scripts before creating new ones
   - Make incremental changes, not big bangs
   - Document as you go

5. **VERIFY** ✅
   - Check results against expected outcomes
   - Run validation tools (markdownlint, Quick-HealthCheck)
   - Update documentation (rules files, README.md)
   - Test edge cases

6. **REFLECT** 🤔
   - What worked well?
   - What could be improved?
   - What would prevent this issue in the future?
   - Update instructions/scripts based on learnings

#### System 2 Reasoning

**Engage deliberate, analytical thinking for complex decisions**:

- **Question Assumptions**: Don't accept requirements at face value
- **Consider Trade-offs**: Every decision has pros and cons
- **Think Long-term**: How will this affect future work?
- **Pattern Recognition**: Have we solved similar problems before?
- **Meta-cognition**: Monitor your own reasoning process

**Red Flags Requiring Deep Analysis**:

- ⚠️ Structural changes (affects multiple files)
- ⚠️ Deletions (potential information loss)
- ⚠️ Consolidations (complexity in merging)
- ⚠️ New patterns (precedent-setting decisions)
- ⚠️ User frustration (indicates process failure)

#### Practical Application

**For Simple Tasks** (read file, create script):

- Quick CoT: "Need to read file → use read_file tool → done"
- Minimal reasoning sufficient

**For Complex Tasks** (consolidate docs, restructure):

- Full ReAct cycle required
- Multiple OBSERVE → ANALYZE → PLAN → ACT → VERIFY iterations
- Deep System 2 reasoning for critical decisions
- Document reasoning in commit messages

**When User Points Out Mistakes**:

1. **Acknowledge**: "You're right, I missed X"
2. **Root Cause**: "This happened because..."
3. **Immediate Fix**: Correct the issue
4. **Prevention**: "I'm adding [protocol/check/script] to prevent recurrence"
5. **Update Instructions**: Modify THIS FILE to embed learning

---

## 📁 Repository Structure

> **📋 Single Source of Truth**: The complete and up-to-date repository structure is maintained in [`docs/01_repository-structure.md`](../docs/01_repository-structure.md). This file should be referenced for the authoritative structure. When the structure changes, update that file first, then update references here.

For the complete repository structure, see: **[docs/01_repository-structure.md](../docs/01_repository-structure.md)**

**Quick Overview**:

- `src/01_github-basics/` - Core GitHub concepts and terminology
- `src/02_working-with-repositories/` - Branching, commits, merges
- `src/03_collaboration/` - Pull requests, reviews, issues
- `src/04_github-tools/` - Actions, Pages, Marketplace
- `src/05_security-and-best-practices/` - Permissions, secrets, protection
- `src/06_open-source-and-community/` - Licenses, OSS workflows
- `src/labs/` - Hands-on exercises
- `src/notes/` - Exam tips, glossary, common mistakes
- `src/resources/` - Official links, practice questions, cheat sheets
- `src/progress/` - Milestones, study log, readiness tracking

---

## 🔧 Development Guidelines

### When Working with GitHub Foundations Content

1. **Follow Exam Domain Structure**: Content organized by GitHub Foundations exam domains
2. **Use Descriptive Names**: Files use clear, descriptive names (e.g., `concepts.md`, `pull-requests.md`)
3. **Keep Modular**: Recommended ≤150 lines per file (split if needed)
4. **Include Practical Examples**: Add real-world examples and use cases
5. **Lab Structure**: Each lab includes objective, steps, and expected outcome

### When Creating Educational Content

#### File Naming

- ✅ Use descriptive names: `concepts.md`, `pull-requests.md`, `github-actions.md`
- ✅ Domain folders use numbered prefixes: `src/01_github-basics/`, `src/02_working-with-repositories/`
- ✅ Lab files use numbered format: `lab-01-create-repo.md` (in `src/labs/`)

#### Content Structure

- ✅ Recommended ≤150 lines per file
- ✅ Split into multiple parts if content exceeds 150 lines
- ✅ Each part should be self-contained
- ✅ Include practical examples and use cases

### When Creating Labs

#### Standard Structure

Each lab should include:

- **Objective**: What the lab teaches
- **Prerequisites**: What you need before starting
- **Steps**: Detailed step-by-step instructions
- **Expected Outcome**: What you should see/achieve
- **Troubleshooting**: Common issues and solutions (optional)

### Security Best Practices

- ❌ **NEVER** commit API keys or secrets
- ✅ **ALWAYS** use environment variables or GitHub Secrets
- ✅ **ALWAYS** add sensitive files to `.gitignore`

---

## 📋 Code Quality Standards

### Markdown Files

- Use proper heading hierarchy (H1 → H2 → H3)
- Include code fence language specifications
- Follow markdownlint rules
- Use UTF-8 encoding
- Line length ~120 chars (tables/URLs may exceed)

### Code Examples

- Include GitHub CLI, Git commands, and workflow examples
- Use proper syntax highlighting
- Include comments explaining steps
- Keep examples simple and focused

---

## 🚀 Content Creation Workflow

### Learning-Focused Workflow

1. **Domain Coverage**: Ensure content covers all exam objectives for the domain
2. **Practical Examples**: Include real-world scenarios and use cases
3. **Hands-On Practice**: Create labs that reinforce concepts
4. **Cross-Reference**: Link related topics across domains
5. **Progress Tracking**: Update progress files as content is completed

### Quality Gate Questions

Before publishing any content:

1. ✅ Does this cover exam objectives for the domain?
2. ✅ Are practical examples included?
3. ✅ Is the content clear and easy to follow?
4. ✅ Does this fit naturally in the learning progression?
5. ✅ Are there hands-on exercises or labs for this topic?
6. ✅ Is this content within 150 lines for effective delivery?

---

## 📝 Local Quality Checks

Before committing changes:

### Markdown Linting

```bash
npx markdownlint-cli2 "**/*.md"
```

### Link Checking (Lychee via Docker)

```bash
docker run --rm -v "${PWD}:/input:ro" lycheeverse/lychee --config /input/lychee.toml "/input/**/*.md"
```

### Pre-Commit Checklist

- [ ] Run markdownlint and fix any issues
- [ ] Run Lychee link checker (if Docker available)
- [ ] Verify all file references point to existing files
- [ ] Check that code fences have language specifications
- [ ] Ensure proper blank lines around headings and lists
- [ ] Verify file naming follows conventions

---

## 🔗 Quick Links

- [Repository Structure](../docs/01_repository-structure.md)
- [Learning Path](../README.md)
- [Contributing](../CONTRIBUTING.md)

---

## 📞 Support

- **Issues**: Use GitHub Issues for questions or suggestions
- **Learning**: Follow the domain progression (01 → 06)
- **Labs**: Complete labs in order for best learning experience

---

