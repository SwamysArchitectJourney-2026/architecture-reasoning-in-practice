# Contribution Rules

**Purpose**: Maintain repository structure and quality as it grows.

---

## 🚫 Hard Rules (Non-Negotiable)

These rules prevent structural drift and maintain clarity:

1. **No role folders outside `04_roles/`**
   - All role-specific content belongs in `src/04_roles/[role]/`
   - If content applies to multiple roles, it belongs in `02_thinking/` or `03_communication/`

2. **No evaluation content outside `05_evaluation/`**
   - All scenarios, walkthroughs, and practice materials belong in `05_evaluation/`
   - Organize by type: `system-design/`, `leadership-scenarios/`, `scenario-walkthroughs/`

3. **No "interview" terminology**
   - Use "evaluation", "readiness", "scenario", or "walkthrough"
   - This repository is about role readiness, not interview prep

4. **One concept = one folder**
   - Each folder should have a single, clear purpose
   - If a folder's purpose is unclear, it needs restructuring

5. **If unsure → `07_notes/`**
   - When in doubt, put content in `07_notes/` for later organization
   - Don't create new folders without clear purpose

---

## 📁 Folder Structure Rules

### `01_orientation/`
- **Purpose**: How to use the repository
- **Content**: README, role comparison, learning strategies
- **Rule**: No role-specific content, no scenarios

### `02_thinking/`
- **Purpose**: How to think (role-agnostic)
- **Content**: System thinking, trade-offs, constraints, failure resilience
- **Rule**: Must apply to all roles

### `03_communication/`
- **Purpose**: How to explain decisions
- **Content**: Structured answers, whiteboard flow, decision narratives
- **Rule**: Must apply to all roles

### `04_roles/`
- **Purpose**: Role-specific preparation
- **Content**: README, readiness checklist, role-specific topics
- **Rule**: One folder per role, no mixing

### `05_evaluation/`
- **Practice scenarios only**
- **Content**: System design scenarios, leadership scenarios, walkthroughs
- **Rule**: No theory, only practice materials

### `06_reference/`
- **Lookup materials only**
- **Content**: Architecture patterns, cloud reference, terminology, reading lists
- **Rule**: Not study material, reference only

### `07_notes/`
- **Personal, unstructured**
- **Content**: Scratchpad, temporary content, unsure items
- **Rule**: Can be messy, this is fine

---

## ✍️ File Naming Conventions

- Use kebab-case: `readiness-checklist.md`
- Be descriptive: `system-design-scenario.md` not `scenario1.md`
- No "interview" in names: use `evaluation`, `readiness`, `scenario`
- README files: `README.md` (uppercase)

---

## 📝 Content Guidelines

### Scenarios (`05_evaluation/`)
- Must include: Context, Ambiguities, Clarifying Questions, Trade-offs, Structured Reasoning, Reflections
- Use scenario templates from `05_evaluation/scenario-template.md`
- Tag with relevant roles
- Focus on reasoning process, not just solutions

### Role Content (`04_roles/`)
- Each role must have: `README.md` and `readiness-checklist.md`
- README should include: Role definition, preparation path, key topics, practice exercises
- Readiness checklist should measure role maturity, not interview performance

### Thinking Content (`02_thinking/`)
- Must be role-agnostic
- Focus on "how to think" not "what to know"
- Include: Summary, When to Use, How to Apply

### Communication Content (`03_communication/`)
- Must be role-agnostic
- Focus on "how to explain" not "what to say"
- Include: Summary, When to Use, How to Apply

---

## 🔍 Review Checklist

Before adding content, verify:

- [ ] Content belongs in the right folder (check hard rules)
- [ ] File name follows conventions
- [ ] No "interview" terminology
- [ ] Links to other files use relative paths
- [ ] Content is role-appropriate (role-specific vs role-agnostic)
- [ ] Scenarios use templates
- [ ] README files exist in major folders

---

## 🚨 What NOT to Do

❌ Create new top-level folders without discussion  
❌ Mix role-specific and role-agnostic content  
❌ Use "interview" terminology  
❌ Create navigation guides (structure should be self-explanatory)  
❌ Add content without clear purpose  
❌ Duplicate content across folders  

---

## ✅ What TO Do

✅ Follow the existing structure  
✅ Use templates for scenarios  
✅ Keep content focused and clear  
✅ Update README files when adding major content  
✅ Put unsure content in `07_notes/`  
✅ Ask questions if structure is unclear  

---

## 📋 Adding New Content

### New Scenario
1. Choose appropriate folder: `05_evaluation/system-design/` or `leadership-scenarios/`
2. Use template from `05_evaluation/scenario-template.md`
3. Tag with relevant roles
4. Add to appropriate role folder's README if role-specific

### New Role
1. Create folder: `04_roles/[role-name]/`
2. Create `README.md` following existing role README pattern
3. Create `readiness-checklist.md` following existing pattern
4. Add role to `01_orientation/role-comparison.md`

### New Thinking Framework
1. Determine if role-agnostic (goes in `02_thinking/`) or role-specific (goes in `04_roles/[role]/`)
2. Follow existing framework structure: Summary, When to Use, How to Apply
3. Update relevant README files

---

## 🎯 Philosophy

This repository follows the same principles it teaches:

- **Clear boundaries** (folder structure)
- **Trade-offs** (what goes where and why)
- **Long-term thinking** (structure that scales)
- **Pragmatic decisions** (rules that prevent drift)

If you're unsure about structure, ask: "Would this make sense to a new reader in 60 seconds?"

---

**Remember**: Structure is architecture. Keep it clean, clear, and maintainable.
