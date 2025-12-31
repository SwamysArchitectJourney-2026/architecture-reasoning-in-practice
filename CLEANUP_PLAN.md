# Cleanup Plan - Resolve Merge Issues

## Current Duplicates

1. **Role folders**: `04_role-paths/`, `04_roles/`, `06_role-preparation/`
2. **Thinking folders**: `01_reasoning-foundations/`, `02_thinking/`, `02_thinking-toolkit/`, `03_tradeoff-articulation/`
3. **Communication folders**: `02_answer-structuring/`, `03_communication/`, `03_answer-frameworks/`
4. **Evaluation folders**: `05_evaluation-scenarios/`, `05_evaluation/`, `05_evaluation-practice/`
5. **Reference folders**: `docs/`, `resources/`, `06_reference/`
6. **Old files**: `00_ROLE_INDEX.md`, `NAVIGATION_GUIDE.md`

## Resolution Strategy

### Keep (New Structure)
- `04_roles/` - Final role folder
- `02_thinking/` - Final thinking folder
- `03_communication/` - Final communication folder
- `05_evaluation/` - Final evaluation folder
- `06_reference/` - Final reference folder

### Migrate Then Delete
- Content from `04_role-paths/` → `04_roles/`
- Content from `06_role-preparation/` → `04_roles/`
- Content from `01_reasoning-foundations/` → `02_thinking/system-thinking/`
- Content from `03_tradeoff-articulation/` → `02_thinking/tradeoffs/`
- Content from `02_answer-structuring/` → `03_communication/structured-answers/`
- Content from `03_answer-frameworks/` → `03_communication/decision-narratives/`
- Content from `05_evaluation-scenarios/` → `05_evaluation/system-design/`
- Content from `05_evaluation-practice/` → `05_evaluation/scenario-walkthroughs/`
- Content from `docs/` → `06_reference/`
- Content from `resources/` → `06_reference/`

### Delete After Migration
- `04_role-paths/`
- `06_role-preparation/`
- `01_reasoning-foundations/`
- `02_thinking-toolkit/`
- `03_tradeoff-articulation/`
- `02_answer-structuring/`
- `03_answer-frameworks/`
- `05_evaluation-scenarios/`
- `05_evaluation-practice/`
- `docs/`
- `resources/`
- `00_ROLE_INDEX.md`
- `NAVIGATION_GUIDE.md`
- `04_role-perspectives/` (merge into role READMEs)

## Action Items

1. ✅ Create consolidated README.md files in `04_roles/` (use best content from duplicates)
2. ⬜ Migrate all content to new structure
3. ⬜ Update all path references in files
4. ⬜ Delete old folders and files
5. ⬜ Verify no broken links

