# Workspace Review (Deep Dive) — 2025-12-30

> Reviewer: GitHub Copilot (GPT-5.2)

## Scope

Systematic review of the full workspace contents (all tracked files + configuration + scripts), with deeper focus on:
- Consistency between repo purpose, rules, and structure documentation
- Quality/compliance guardrails (scripts + CI)
- Content structure consistency across `src/`

## Automation & Checks Run

- `tools/psscripts/Quick-HealthCheck.ps1`
- `tools/psscripts/Get-RepoStats.ps1`
- `tools/psscripts/Test-ContentCompliance.ps1`
- `tools/psscripts/Find-DuplicateContent.ps1`

## Executive Summary

**Overall:** The repo is in good shape and already has strong guardrails (content compliance + basic health checks). The `src/` content is consistent and aligned with the “reasoning practice, not answer keys” philosophy.

**Primary issues are documentation drift and a few rule mismatches**:
1. `docs/01_repository-structure.md` is no longer a true “complete repository structure” (it omits multiple existing files).
2. `README.md` still says scenarios/resources are “to be populated”, but scenarios exist and resources are at least scaffolded.
3. `source-material/README.md` is **misaligned** with this repo’s purpose (it references GitHub Foundations domain structure). Also, `source-material/` is listed as git-ignored but currently contains committed files.
4. `.cursor/rules/*.mdc` references some scripts that do not exist in `tools/psscripts/` (risk of confusing future work).

## Key Findings (Actionable)

### 1) Structure Docs Drift (High Priority)
- `docs/01_repository-structure.md` claims to be the *complete* structure, but it only lists a subset of current files.
  - Missing examples include:
    - `src/01_reasoning-foundations/decision-rationale-framing.md`
    - `src/02_answer-structuring/architecture-explanation-structure.md`
    - Several `src/03_tradeoff-articulation/*` and `src/05_evaluation-scenarios/*`
- Impact: Your “single source of truth” guarantee is currently broken, and it violates your own “update protocol” directive.

### 2) README Drift (Medium Priority)
- `README.md` says:
  - “practice scenarios (to be populated)” — but `src/05_evaluation-scenarios/` contains multiple scenarios.
  - “resources … (to be populated)” — but `src/resources/` exists (currently minimal).
- Impact: Readers get the wrong impression about repo maturity.

### 3) `source-material/` Misalignment + Tracking Risk (High Priority)
- `.gitignore` includes `source-material/`, but Git ignore does **not** remove already-tracked files.
- `source-material/README.md` is written for a different learning repo (GitHub Foundations domain folders) and conflicts with the purpose/structure of this repo.
- Impact: Confusing guidance + risk of accidentally publishing raw/third-party or non-transformative content.

### 4) Rules Consistency Gaps (Medium Priority)
- `.cursor/rules/01_educational-content-rules.mdc` contains mixed guidance on numbering:
  - It says practice content files do not require numbering (matches current repo).
  - It also says “ALWAYS use numeric prefixes starting at 01_” and that this applies to *all files*, which does not match current reality.
- `.cursor/rules/03_quality-assurance.mdc` references scripts like `Validate-FileReferences.ps1` / `Review-EducationalContent.ps1` / `Comprehensive-WorkspaceReview.ps1` that are not present.
- Impact: Future edits may be blocked or misdirected.

### 5) Content Quality Observations (Low/Medium Priority)
- `src/` files are short, consistent, and aligned with the intended patterns.
- Scenario files follow the scenario template headings and avoid “interview” language (enforced by `Test-ContentCompliance.ps1`).
- `src/resources/*` are placeholders (fine, but update README wording accordingly).

### 6) CI/Quality Coverage (Low Priority)
- GitHub Actions workflow runs `Test-ContentCompliance.ps1` on PRs and pushes (good).
- It does not run markdownlint or lychee (currently a “local-only” recommendation). If you want stricter CI, consider adding those later.

## Per-File Review Notes

### Top-Level
- `README.md` — **Needs update** (minor drift: “to be populated” references).
- `docs/01_repository-structure.md` — **Needs update** (no longer complete).
- `CONTRIBUTING.md` — OK.
- `CODE_OF_CONDUCT.md` — OK.
- `SECURITY.md` — OK.
- `LICENSE` — OK.
- `.gitignore` — OK; note that it won’t untrack already-committed `source-material/`.
- `lychee.toml` — OK.
- `.markdownlint.json` / `.markdownlint-cli2.yaml` / `.markdownlintignore` — OK.

### `.github/`
- `.github/copilot-instructions.md` — OK, but depends on accurate `docs/01_repository-structure.md`.
- `.github/workflows/content-compliance.yml` — OK.
- Issue templates + PR template — OK.

### `.cursor/rules/`
- Overall: strong intent and coverage.
- Watch-outs:
  - Conflicting numbering guidance.
  - References to scripts that are not present.

### `src/`
- `src/01_reasoning-foundations/*` — OK; concise and consistent.
- `src/02_answer-structuring/*` — OK.
- `src/03_tradeoff-articulation/*` — OK; good “when to use/avoid + trade-offs” framing.
- `src/04_role-perspectives/*` — OK; intentionally lightweight.
- `src/05_evaluation-scenarios/*` — OK; scenarios are aligned with the non-answer-key intent.
- `src/resources/*` — OK as scaffolding; currently minimal.

### `tools/psscripts/`
- Scripts are clean, readable, and consistent.
- `Test-ContentCompliance.ps1` is a good “guardrail” (and is what CI runs).

### `source-material/`
- **Risk area** due to purpose mismatch and presence of committed files despite `.gitignore` intent.
- `source-material/README.md` is misaligned with this repo and should be revisited.

## Recommended Next Steps (Ordered)

1. Update `docs/01_repository-structure.md` to match the actual repo structure.
2. Update `README.md` to remove “to be populated” statements (or reword to match current state).
3. Decide the policy for `source-material/`:
   - Either keep it truly untracked (remove committed files via `git rm --cached source-material/*`), or
   - Keep it tracked but then remove the “git-ignored / never commit” guidance.
4. Reconcile `.cursor/rules/01_educational-content-rules.mdc` numbering guidance to match your actual conventions.
5. Either add the referenced scripts (Validate-FileReferences, etc.) or remove the references to avoid false expectations.
