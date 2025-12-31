# Cross-Repo Study Flow

**Purpose**: How to use `architecture-reasoning-in-practice` and `system-design-in-practice` together.

**Core Principle:**
> **Reasoning lives here. Application lives in `system-design-in-practice`.**

---

## 🔄 The Workflow

### 1. Learn How to Think
**Location**: `architecture-reasoning-in-practice/src/02_thinking/`

**What you learn:**
- Problem framing
- Trade-off analysis
- Constraints modeling
- Failure and resilience thinking

**Time**: 2-3 weeks

**Outcome**: You can reason about architectural decisions systematically.

---

### 2. Learn What Your Role Owns
**Location**: `architecture-reasoning-in-practice/src/04_roles/[your-role]/`

**What you learn:**
- Role scope and accountability
- Readiness criteria
- Role-specific responsibilities

**Time**: 1-2 weeks

**Outcome**: You understand what you're accountable for at your level.

---

### 3. Apply Thinking to Full Designs
**Location**: `system-design-in-practice/`

**What you do:**
- Design complete systems
- Apply reasoning frameworks
- Make architectural decisions
- Articulate trade-offs

**Time**: Ongoing practice

**Outcome**: You can design systems end-to-end with clear reasoning.

---

### 4. Reflect and Refine
**Location**: Back to `architecture-reasoning-in-practice/`

**What you do:**
- Review evaluation scenarios (`05_evaluation/`)
- Practice communication (`03_communication/`)
- Reference materials as needed (`06_reference/`)

**Time**: Continuous

**Outcome**: You refine your reasoning and communication skills.

---

## 📋 Study Paths by Role

### Architect Path

**Week 1-2: Foundations**
- `architecture-reasoning-in-practice/src/01_orientation/`
- `architecture-reasoning-in-practice/src/02_thinking/`
- `architecture-reasoning-in-practice/src/03_communication/`

**Week 3: Role Understanding**
- `architecture-reasoning-in-practice/src/04_roles/architect/`
- Complete readiness checklist

**Week 4-8: Application**
- `system-design-in-practice/` - Design systems
- `architecture-reasoning-in-practice/src/05_evaluation/system-design/architect/` - Practice scenarios

**Ongoing: Refinement**
- Use `06_reference/` for lookup
- Practice with evaluation scenarios
- Apply to new system designs

---

### Principal Engineer Path

**Week 1-2: Foundations**
- `architecture-reasoning-in-practice/src/01_orientation/`
- `architecture-reasoning-in-practice/src/02_thinking/`
- `architecture-reasoning-in-practice/src/03_communication/`

**Week 3: Role Understanding**
- `architecture-reasoning-in-practice/src/04_roles/principal-engineer/`
- Complete readiness checklist

**Week 4-8: Application**
- `system-design-in-practice/` - Design and implement systems
- `architecture-reasoning-in-practice/src/05_evaluation/system-design/principal-engineer/` - Practice scenarios

**Ongoing: Refinement**
- Use `06_reference/` for lookup
- Practice with evaluation scenarios
- Apply to new system designs

---

## 🎯 Key Workflows

### When Designing a System

1. **Start in `system-design-in-practice/`**
   - Pick a scenario
   - Design the system

2. **Apply reasoning from here**
   - Use `02_thinking/` frameworks
   - Apply `03_communication/` patterns
   - Reference `06_reference/` as needed

3. **Validate with role expectations**
   - Check `04_roles/[your-role]/` for scope
   - Ensure decisions align with role

4. **Reflect and refine**
   - Review evaluation scenarios
   - Practice communication
   - Improve reasoning

---

### When Practicing Scenarios

1. **Start in `architecture-reasoning-in-practice/src/05_evaluation/`**
   - Pick a scenario
   - Work through it

2. **Apply full design in `system-design-in-practice/`**
   - Design the complete system
   - Apply reasoning frameworks

3. **Reflect back here**
   - Review communication
   - Check reasoning quality
   - Refine approach

---

## ⚠️ Anti-Patterns

### ❌ Don't Do This

1. **Duplicate content between repos**
   - Reasoning here, application there
   - No mirroring

2. **Study `06_reference/` end-to-end**
   - It's lookup only, not sequential reading

3. **Skip foundations**
   - `02_thinking/` is required for all roles
   - Don't jump to role-specific content

4. **Ignore role scope**
   - Each role has different accountability
   - Don't mix role expectations

5. **Practice without application**
   - Scenarios here, full designs there
   - Both are needed

---

## ✅ Best Practices

### Do This

1. **Follow the progressive path**
   - Orientation → Thinking → Communication → Roles → Evaluation

2. **Apply reasoning to real designs**
   - Use `system-design-in-practice/` for full application

3. **Reference materials as needed**
   - `06_reference/` is lookup, not study material

4. **Review regularly**
   - Check readiness checklists
   - Practice with scenarios
   - Apply to new designs

5. **Respect folder contracts**
   - Each folder has a purpose
   - Don't violate contracts

---

## 🔗 Quick Links

### Reasoning (This Repo)
- **Orientation**: `src/01_orientation/README.md`
- **Thinking**: `src/02_thinking/README.md`
- **Communication**: `src/03_communication/README.md`
- **Roles**: `src/04_roles/[your-role]/README.md`
- **Evaluation**: `src/05_evaluation/`
- **Reference**: `src/06_reference/README.md`

### Application (Other Repo)
- **System Design**: `system-design-in-practice/`
- **Full Scenarios**: Complete system designs
- **Implementation**: Code and architecture

---

## 📊 Study Time Allocation

**Recommended split:**
- **Reasoning (this repo)**: 40% of study time
- **Application (other repo)**: 60% of study time

**Why:**
- Reasoning without application is theoretical
- Application without reasoning is ad-hoc
- Both together build real capability

---

## 🎓 Success Metrics

You're succeeding when:
- ✅ You can reason about decisions systematically
- ✅ You can design systems end-to-end
- ✅ You can explain trade-offs clearly
- ✅ You understand your role's scope
- ✅ You can handle ambiguous requirements

---

**Remember: Reasoning here, application there. No duplication, no mirroring.**

