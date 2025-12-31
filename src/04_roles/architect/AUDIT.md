# Architect Folder Audit

**Date**: Current session  
**Contract**: `../../FOLDER_CONTRACTS.md` - `04_roles/` section

---

## Contract Requirements

**Purpose**: Define scope, responsibility, and readiness **per role**

**Allowed content:**
- `README.md` (role contract, preparation path)
- `readiness-checklist.md` (readiness validation)
- Responsibility area documents (optional)

**Rules:**
- ✅ Role-specific scope and accountability
- ✅ Readiness criteria
- ❌ No generic theory (that's `02_thinking/`)
- ❌ No scenario walkthroughs (that's `05_evaluation/`)
- ❌ No overlap between roles

**Hard rule**: If content does not change when the role changes, it does NOT belong here.

---

## File-by-File Analysis

### ✅ `readiness-checklist.md` — **CORRECT**

**Assessment**: Compliant

**Why:**
- Binary, uncomfortable checkboxes
- Role-specific accountability (system boundaries, governance, long-term thinking)
- No generic theory
- No scenarios
- Tests architect maturity

**Action**: Keep as-is

---

### ⚠️ `README.md` — **VIOLATIONS FOUND**

**Assessment**: Contains contract violations

#### Violation 1: Generic Theory (Lines 59-62, 116-152)

**Location**: "Phase 2: Architect-Specific Knowledge" and "Key Topics to Master"

**Problem**: 
- Lists generic topics: "System Design", "Trade-offs at Scale", "Migrations & Modernization"
- "Key Topics to Master" is a knowledge dump
- This content doesn't change when role changes (Principal Engineer would have similar topics)

**Contract violation**: ❌ No generic theory

**Fix**: 
- Remove "Key Topics to Master" section entirely
- Replace Phase 2 with role-specific accountability areas
- Link to `02_thinking/` and `06_reference/` for theory

#### Violation 2: Evaluation Content (Lines 178-215)

**Location**: "Evaluation Tips" and "Common Evaluation Questions"

**Problem**:
- Evaluation tips belong in `05_evaluation/`
- Common questions belong in `05_evaluation/`
- This is pressure testing, not role definition

**Contract violation**: ❌ No scenario walkthroughs (evaluation is scenario-based)

**Fix**: 
- Remove these sections
- Link to `05_evaluation/system-design/architect/` instead

#### Violation 3: Generic Practice Exercises (Lines 156-175)

**Location**: "Practice Exercises"

**Problem**:
- Exercises are generic, not role-specific
- Could apply to any role
- Better suited for `05_evaluation/` or removed

**Contract violation**: ❌ No generic content

**Fix**: 
- Remove or move to `05_evaluation/`
- Replace with role-specific accountability examples

---

## Recommended Fixes

### 1. Remove Generic Theory Sections

**Delete:**
- "Key Topics to Master" (lines 116-152)
- Generic topic lists in Phase 2 (lines 59-62)

**Replace with:**
- Role-specific accountability areas
- Links to `02_thinking/` for theory
- Links to `06_reference/` for patterns

### 2. Remove Evaluation Content

**Delete:**
- "Evaluation Tips" (lines 178-194)
- "Common Evaluation Questions" (lines 197-215)
- "Practice Exercises" (lines 156-175)

**Replace with:**
- Link to `05_evaluation/system-design/architect/`
- Focus on role scope, not evaluation prep

### 3. Strengthen Role-Specific Content

**Keep and enhance:**
- Role Definition (lines 11-27) ✅
- Preparation Path structure (but remove generic content) ⚠️
- Success Criteria (lines 218-228) ✅

**Add:**
- Clear accountability statements
- What architects own vs influence
- Role-specific decision-making scope

---

## Corrected Structure (Recommended)

```
README.md should contain:
1. Role Definition ✅ (keep)
2. What Architects Own (role-specific accountability)
3. Preparation Path (links to other folders, not knowledge dumps)
4. Success Criteria ✅ (keep)
5. Links to other folders (thinking, evaluation, reference)
```

**Remove:**
- Generic knowledge lists
- Evaluation tips
- Practice exercises
- Common questions

---

## Summary

**Files**: 2
- ✅ `readiness-checklist.md`: Compliant
- ⚠️ `README.md`: 3 violations (generic theory, evaluation content, generic exercises)

**Action Required**: Refactor `README.md` to focus on role-specific scope and accountability, remove generic content, link to other folders for theory and evaluation.

**Risk Level**: Medium - Content is good but violates contract. Easy to fix by removing sections and adding links.

