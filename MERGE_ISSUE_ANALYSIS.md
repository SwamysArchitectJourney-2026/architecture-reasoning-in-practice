# Merge Issue Analysis

## 🔍 Issues Identified

### 1. Duplicate Role Folders
- ❌ `04_role-paths/` (old structure) - Contains README.md and preparation-checklist.md
- ✅ `04_roles/` (new structure) - Contains readiness-checklist.md
- ❌ `06_role-preparation/` (old structure) - Contains README.md files

**Action**: Keep `04_roles/`, migrate content from others, then delete old folders

### 2. Duplicate Thinking Folders
- ❌ `01_reasoning-foundations/` (old)
- ✅ `02_thinking/` (new, partially migrated)
- ❌ `02_thinking-toolkit/` (old)

**Action**: Complete migration to `02_thinking/`, then delete old folders

### 3. Duplicate Communication Folders
- ❌ `02_answer-structuring/` (old)
- ✅ `03_communication/` (new, partially migrated)
- ❌ `03_answer-frameworks/` (old)

**Action**: Complete migration to `03_communication/`, then delete old folders

### 4. Duplicate Evaluation Folders
- ❌ `05_evaluation-scenarios/` (old)
- ✅ `05_evaluation/` (new, partially migrated)
- ❌ `05_evaluation-practice/` (old)

**Action**: Complete migration to `05_evaluation/`, then delete old folders

### 5. Duplicate Checklist Files
- ❌ `04_role-paths/*/preparation-checklist.md` (old name)
- ✅ `04_roles/*/readiness-checklist.md` (new name)

**Action**: Delete old preparation-checklist.md files

### 6. Old Files to Delete
- ❌ `00_ROLE_INDEX.md`
- ❌ `NAVIGATION_GUIDE.md`
- ❌ `docs/` folder (should move to `06_reference/`)
- ❌ `resources/` folder (should move to `06_reference/`)

---

## 🧹 Cleanup Plan

### Step 1: Migrate Role Content
1. Copy README.md from `04_role-paths/` and `06_role-preparation/` to `04_roles/` (if better)
2. Delete `04_role-paths/` folder
3. Delete `06_role-preparation/` folder

### Step 2: Complete Thinking Migration
1. Move remaining files from `01_reasoning-foundations/` to `02_thinking/system-thinking/`
2. Move files from `03_tradeoff-articulation/` to `02_thinking/tradeoffs/`
3. Delete `01_reasoning-foundations/`
4. Delete `02_thinking-toolkit/`
5. Delete `03_tradeoff-articulation/`

### Step 3: Complete Communication Migration
1. Move files from `02_answer-structuring/` to `03_communication/structured-answers/`
2. Move files from `03_answer-frameworks/` to `03_communication/decision-narratives/`
3. Delete `02_answer-structuring/`
4. Delete `03_answer-frameworks/`

### Step 4: Complete Evaluation Migration
1. Move files from `05_evaluation-scenarios/` to `05_evaluation/system-design/` (by role)
2. Move files from `05_evaluation-practice/` to `05_evaluation/scenario-walkthroughs/`
3. Delete `05_evaluation-scenarios/`
4. Delete `05_evaluation-practice/`

### Step 5: Migrate Reference Content
1. Move `docs/` content to `06_reference/`
2. Move `resources/` content to `06_reference/`
3. Delete `docs/` folder
4. Delete `resources/` folder

### Step 6: Delete Old Files
1. Delete `00_ROLE_INDEX.md`
2. Delete `NAVIGATION_GUIDE.md`

---

## ✅ Expected Final Structure

```
src/
├── 01_orientation/
├── 02_thinking/
│   ├── system-thinking/
│   ├── tradeoffs/
│   ├── constraints/
│   └── failure-resilience/
├── 03_communication/
│   ├── structured-answers/
│   ├── whiteboard-flow/
│   └── decision-narratives/
├── 04_roles/
│   ├── architect/
│   ├── principal-engineer/
│   ├── staff-engineer/
│   └── engineering-manager/
├── 05_evaluation/
│   ├── system-design/
│   ├── leadership-scenarios/
│   └── scenario-walkthroughs/
├── 06_reference/
└── 07_notes/
```

---

## 🚨 Critical: No Duplicates

After cleanup, there should be:
- ✅ Only ONE role folder: `04_roles/`
- ✅ Only ONE thinking folder: `02_thinking/`
- ✅ Only ONE communication folder: `03_communication/`
- ✅ Only ONE evaluation folder: `05_evaluation/`
- ✅ Only ONE reference folder: `06_reference/`

