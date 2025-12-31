# Migration Status - Cleanup Progress

**Last Updated**: Current session  
**Status**: In Progress

---

## ✅ Completed Migrations

### Thinking Content (`02_thinking/`)
- ✅ `problem-framing.md` → `system-thinking/`
- ✅ `clarification-strategies.md` → `system-thinking/`
- ✅ `decision-rationale-framing.md` → `system-thinking/`
- ✅ `assumptions-and-constraints.md` → `constraints/`
- ✅ `risk-and-failure-framing.md` → `failure-resilience/`
- ✅ All tradeoff files → `tradeoffs/` (11 files migrated)
- ✅ `README.md` created

### Communication Content (`03_communication/`)
- ✅ `top-down-communication.md` → `structured-answers/`
- ✅ `depth-control.md` → `structured-answers/`
- ✅ `time-boxed-reasoning.md` → `structured-answers/`
- ✅ `architecture-explanation-structure.md` → `structured-answers/`
- ✅ `README.md` created

### Evaluation Scenarios (`05_evaluation/`)
- ✅ `explaining-complex-architecture.md` → `system-design/architect/`
- ✅ `managing-complexity-trade-offs.md` → `system-design/architect/`
- ✅ `legacy-modernization.md` → `system-design/architect/`
- ✅ `conflicting-requirements.md` → `system-design/architect/`
- ✅ `microservices-transaction-management.md` → `system-design/principal-engineer/`
- ✅ `vague-problem.md` → `system-design/principal-engineer/`
- ✅ Scenario templates created

### Role Content (`04_roles/`)
- ✅ `architect/README.md` created (consolidated)
- ✅ `architect/readiness-checklist.md` created
- ✅ `principal-engineer/readiness-checklist.md` created

### Reference Content (`06_reference/`)
- ⬜ Needs migration from `docs/` and `resources/`

---

## ⬜ Remaining Migrations

### AIOps Scenarios
- ⬜ `aiops-anomaly-detection-system.md` → `05_evaluation/system-design/aiops-architect/`
- ⬜ `aiops-incident-prediction.md` → `05_evaluation/system-design/aiops-architect/`
- ⬜ `aiops-root-cause-analysis.md` → `05_evaluation/system-design/aiops-architect/`
- ⬜ `aiops-streaming-pipeline.md` → `05_evaluation/system-design/aiops-architect/`
- ⬜ `aiops-concept-drift.md` → `05_evaluation/system-design/aiops-architect/`

### Reference Materials
- ⬜ `docs/glossary.md` → `06_reference/terminology.md`
- ⬜ `docs/role-skills-matrix.md` → `06_reference/role-skills-matrix.md`
- ⬜ `resources/aiops-reference.md` → `06_reference/architecture-patterns/aiops-reference.md`
- ⬜ `resources/frameworks.md` → `06_reference/architecture-patterns/frameworks.md`
- ⬜ `resources/tools.md` → `06_reference/architecture-patterns/tools.md`
- ⬜ `resources/reference-materials.md` → `06_reference/reading-list.md`

### Role Content Consolidation
- ⬜ Merge `04_role-paths/architect/README.md` content into `04_roles/architect/README.md` (if better)
- ⬜ Merge `06_role-preparation/architect/README.md` content (if better)
- ⬜ Create `04_roles/principal-engineer/README.md` (consolidate from duplicates)
- ⬜ Create `04_roles/staff-engineer/README.md`
- ⬜ Create `04_roles/engineering-manager/README.md`
- ⬜ Merge `04_role-perspectives/` into role READMEs or `01_orientation/role-comparison.md`

### Path Updates
- ⬜ Update all path references in migrated files
- ⬜ Update links in README files
- ⬜ Fix cross-references

---

## 🗑️ Folders to Delete (After Migration Verified)

- `01_reasoning-foundations/` (migrated to `02_thinking/`)
- `02_thinking-toolkit/` (empty/duplicate)
- `03_tradeoff-articulation/` (migrated to `02_thinking/tradeoffs/`)
- `02_answer-structuring/` (migrated to `03_communication/structured-answers/`)
- `03_answer-frameworks/` (migrated to `03_communication/decision-narratives/`)
- `04_role-paths/` (migrated to `04_roles/`)
- `04_role-perspectives/` (merge into role READMEs)
- `05_evaluation-scenarios/` (migrated to `05_evaluation/system-design/`)
- `05_evaluation-practice/` (migrated to `05_evaluation/scenario-walkthroughs/`)
- `06_role-preparation/` (migrated to `04_roles/`)
- `docs/` (migrated to `06_reference/`)
- `resources/` (migrated to `06_reference/`)
- `00_ROLE_INDEX.md` (replaced by `01_orientation/README.md`)
- `NAVIGATION_GUIDE.md` (no longer needed)

---

## 📋 Next Steps

1. Complete AIOps scenario migration
2. Complete reference material migration
3. Consolidate role READMEs
4. Update all path references
5. Verify no broken links
6. Delete old folders

---

**Note**: Migration is systematic and safe. Old folders remain until verification is complete.

