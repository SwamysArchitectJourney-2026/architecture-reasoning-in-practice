# Architect Role Preparation

## Role Focus

**Architects** focus on:
- Long-range trade-offs and system-wide consistency
- Quality attributes (performance, security, scalability, reliability)
- Technology selection and standards
- Cross-team coordination and alignment

## Preparation Path

### Step 1: Master the Foundations (Required for All)

Study these first - they apply to all roles:

1. **Problem Framing** (`../../01_reasoning-foundations/problem-framing.md`)
   - Restate problems clearly
   - Identify stakeholders and constraints
   - Separate facts from assumptions

2. **Top-Down Communication** (`../../02_answer-structuring/top-down-communication.md`)
   - Start with high-level architecture
   - Go deeper only if asked
   - Control depth of explanation

3. **Trade-off Articulation** (`../../03_tradeoff-articulation/`)
   - Always mention trade-offs
   - Frame decisions with context
   - Understand long-term implications

### Step 2: Architect-Specific Scenarios

Practice these scenarios:

1. **Explaining Complex Architecture** (`../../05_evaluation-scenarios/explaining-complex-architecture.md`)
   - How to explain microservices, DDD, CQRS, polyglot persistence
   - Top-down communication approach
   - Managing complexity

2. **Managing Complexity Trade-offs** (`../../05_evaluation-scenarios/managing-complexity-trade-offs.md`)
   - When to add complexity vs simplify
   - Long-term vs short-term thinking

3. **Legacy Modernization** (`../../05_evaluation-scenarios/legacy-modernization.md`)
   - Migration strategies
   - Risk management
   - Incremental approaches

4. **Conflicting Requirements** (`../../05_evaluation-scenarios/conflicting-requirements.md`)
   - Balancing competing needs
   - Stakeholder management
   - Prioritization

5. **Microservices Transaction Management** (`../../05_evaluation-scenarios/microservices-transaction-management.md`)
   - Distributed transactions
   - Saga patterns
   - Eventual consistency

### Step 3: Architect-Specific Trade-offs

Understand these trade-offs deeply:

1. **Cost vs Scale** (`../../03_tradeoff-articulation/cost-vs-scale.md`)
   - Managed services vs self-hosted
   - Scaling economics

2. **Simplicity vs Flexibility** (`../../03_tradeoff-articulation/simplicity-vs-flexibility.md`)
   - When to keep it simple
   - When flexibility is worth complexity

3. **CQRS Selective Application** (`../../03_tradeoff-articulation/cqrs-selective-application.md`)
   - When CQRS makes sense
   - When it's overkill

4. **Polyglot Persistence Rationale** (`../../03_tradeoff-articulation/polyglot-persistence-rationale.md`)
   - Why use multiple databases
   - Trade-offs and consistency

5. **Edge Security Layered Defense** (`../../03_tradeoff-articulation/edge-security-layered-defense.md`)
   - Security at multiple layers
   - Defense in depth

6. **GenAI Production Integration** (`../../03_tradeoff-articulation/genai-production-integration.md`)
   - Integrating AI safely
   - Reliability and guardrails

7. **Micro-Frontends Rationale** (`../../03_tradeoff-articulation/micro-frontends-rationale.md`)
   - When micro-frontends make sense
   - Team autonomy vs consistency

8. **Risk and Failure Framing** (`../../03_tradeoff-articulation/risk-and-failure-framing.md`)
   - Identify failure modes
   - Mitigation strategies

### Step 4: Role Perspective

Read the architect mindset:
- **Architect Perspective** (`../../04_role-perspectives/architect.md`)
  - Long-range thinking
  - System-wide consistency
  - Quality attributes

### Step 5: Interview Materials

Review role-specific interview materials:
- `../../../source-material/Architect_Interview_1.md`
- `../../../source-material/Architect_Interview_2.md`
- `../../../source-material/Architect_Interview_3.md`
- `../../../source-material/Architect_Interview_4.md`
- `../../../source-material/Architect_Preparation_Guide.md`

## Key Topics to Master

### Architecture Patterns
- Microservices vs Monolith
- Domain-Driven Design (DDD)
- CQRS (when to use)
- Event-driven architecture
- API design (REST, GraphQL)

### Data Architecture
- Polyglot persistence
- Database selection criteria
- Consistency models
- Caching strategies

### Cloud Architecture
- Multi-cloud vs single cloud
- Serverless vs containers
- Edge computing
- Cost optimization

### Security & Compliance
- Defense in depth
- Zero trust
- Compliance requirements
- Data privacy

### Quality Attributes
- Performance
- Scalability
- Reliability
- Security
- Maintainability

## Practice Exercises

1. **Explain a complex architecture in 60 seconds**
   - Use top-down communication
   - Mention key trade-offs
   - Stop when you've answered

2. **Design a system from scratch**
   - Apply problem framing
   - Identify constraints
   - Propose architecture with trade-offs

3. **Handle conflicting requirements**
   - Identify stakeholders
   - Prioritize quality attributes
   - Propose solutions with trade-offs

## Interview Tips

- **Start high-level** - Don't dive into details immediately
- **Always mention trade-offs** - Every decision has trade-offs
- **Think long-term** - Architects focus on system health over time
- **Consider quality attributes** - Performance, security, scalability, etc.
- **Admit uncertainty** - Shows maturity and honesty

## Common Questions

- "Design a scalable system for X"
- "How would you modernize a legacy system?"
- "Explain your architecture decisions"
- "How do you handle conflicting requirements?"
- "What trade-offs did you consider?"

---

**Next Steps**: Start with foundations, then practice scenarios, then review interview materials.

