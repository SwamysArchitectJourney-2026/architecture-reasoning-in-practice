# Folder Contracts

**Purpose**: Lock the intent of each folder to prevent structural drift.

**Rule**: If a file violates its folder's contract, it goes to `07_notes/` or gets deleted.

---

## `01_orientation/` — Context Only

**Purpose:**
Answer *"What is this repo, who is it for, and how should I use it?"*

**Allowed content:**
- Role comparison (Architect vs Principal vs Staff)
- How to use the repo progressively
- How this repo relates to `system-design-in-practice`
- Learning strategies

**Must NOT contain:**
- Deep theory
- Role readiness details
- Scenarios or exercises
- Evaluation materials

**Validation test:**
> If someone skips this folder and feels lost, the repo has failed.

---

## `02_thinking/` — How You Reason

**Purpose:**
Build judgment and architectural instincts.

**Allowed content:**
- System thinking frameworks
- Trade-off analysis
- Constraints modeling
- Failure and resilience reasoning

**Rules:**
- ✅ Role-agnostic (applies to all roles)
- ✅ Focus on "how to think"
- ❌ No checklists
- ❌ No scenarios
- ❌ No "what should I say" content
- ❌ No role-specific guidance

**Validation test:**
> This is where **architectural maturity is formed**.

---

## `03_communication/` — How You Explain

**Purpose:**
Turn thinking into clear, defensible explanations.

**Allowed content:**
- Structured answer frameworks
- Decision narratives
- Whiteboard flows
- Depth control techniques

**Rules:**
- ✅ Focus on "how to explain"
- ✅ Role-agnostic
- ❌ No theory (that's `02_thinking/`)
- ❌ No role ownership (that's `04_roles/`)
- ❌ No evaluation pressure (that's `05_evaluation/`)

**Validation test:**
> If thinking is *correct but invisible*, this folder fixes that.

---

## `04_roles/` — Who You Are Becoming

**Purpose:**
Define scope, responsibility, and readiness **per role**.

**Subfolders:**
- `architect/`
- `principal-engineer/`
- `staff-engineer/`
- `engineering-manager/` (optional)

**Each role may contain:**
- `README.md` (role contract, preparation path)
- `readiness-checklist.md` (readiness validation)
- Responsibility area documents (optional)

**Rules:**
- ✅ Role-specific scope and accountability
- ✅ Readiness criteria
- ❌ No generic theory (that's `02_thinking/`)
- ❌ No scenario walkthroughs (that's `05_evaluation/`)
- ❌ No overlap between roles

**Validation test:**
> This folder answers: *"What am I accountable for at this level?"*

---

## `05_evaluation/` — Pressure Testing

**Purpose:**
Validate readiness under scrutiny.

**Allowed content:**
- System design prompts (linked to `system-design-in-practice`)
- Leadership / ownership scenarios
- Scenario walkthroughs
- Evaluation templates

**Rules:**
- ✅ Practice scenarios only
- ✅ Links to external system design repo
- ❌ No teaching (that's `02_thinking/` and `04_roles/`)
- ❌ No new theory
- ❌ No role definitions (that's `04_roles/`)

**Validation test:**
> This folder is a **mirror**, not a teacher.

---

## `06_reference/` — Lookup Only

**Purpose:**
Just-in-time recall.

**Allowed content:**
- Architecture patterns
- Terminology / glossary
- Cloud references
- Reading lists
- Role skills matrix

**Rules:**
- ✅ Quick reference only
- ✅ Never sequential reading
- ✅ Never required reading
- ✅ Never a dependency for other folders
- ❌ No teaching content
- ❌ No scenarios

**Validation test:**
> If someone studies this folder end-to-end, they are misusing it.

---

## `07_notes/` — Quarantine

**Purpose:**
Temporary holding area for unclear ideas.

**Rules:**
- ✅ Anything can go here temporarily
- ✅ Nothing stays here forever
- ✅ Promote to proper folder or delete regularly
- ✅ Prevents structural pollution

**Validation test:**
> This folder prevents drift by isolating uncertainty.

---

## Cross-Repo Relationship

**Single rule:**
> **Reasoning lives here. Application lives in `system-design-in-practice`.**

**Concrete guidance:**
- Learn **how to think** → `02_thinking/`
- Learn **what your role owns** → `04_roles/`
- Apply thinking to full designs → `system-design-in-practice/`
- Reflect and refine → back here

**No duplication. No mirroring.**

---

## Enforcement

**When adding content:**
1. Check the folder contract
2. If it violates, put it in `07_notes/` or delete it
3. Review `07_notes/` monthly and promote/delete

**When reviewing structure:**
1. Review once every 30-60 days, not daily
2. Check for contract violations
3. Move violations to `07_notes/` or delete

**This structure is frozen. Only content changes, not structure.**

