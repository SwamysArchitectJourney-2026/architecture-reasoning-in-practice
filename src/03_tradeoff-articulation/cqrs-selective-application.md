# CQRS Selective Application

## Summary

Command Query Responsibility Segregation (CQRS) is a powerful pattern, but it should be applied selectively based on actual need, not as a default architecture choice.

## When to Use

Use CQRS when:
- Read and write workloads have significantly different scalability requirements
- Query complexity requires specialized read models
- Write operations need different consistency guarantees than reads
- The domain has clear read/write contention points

Avoid CQRS when:
- The domain is simple with low read/write divergence
- The added complexity outweighs benefits
- Team lacks experience with eventual consistency patterns
- The system is in early stages with unclear requirements

## How to Apply

**Decision Framework:**

1. **Identify Read/Write Divergence**
   - Analyze query patterns vs write patterns
   - Measure actual contention and scalability needs
   - Quantify the gap between read and write requirements

2. **Evaluate Complexity Cost**
   - Assess team's ability to manage eventual consistency
   - Consider debugging and operational overhead
   - Estimate onboarding and maintenance costs

3. **Apply Selectively**
   - Start with a single model in simple domains
   - Introduce CQRS only where metrics justify it
   - Roll back if complexity exceeds value

4. **Frame as Trade-off**
   - Complexity vs scalability
   - Consistency vs performance
   - Operational overhead vs architectural flexibility

**Key Principle:**
> "We don't start with CQRS everywhere. We introduce it where read/write contention or scalability demands justify the complexity."

## Trade-offs

**Benefits:**
- Independent scaling of read and write paths
- Optimized read models for complex queries
- Reduced contention on write models
- Architectural flexibility for future changes

**Costs:**
- Increased system complexity
- Eventual consistency challenges
- More moving parts to operate and debug
- Higher cognitive load for developers

**When It Goes Wrong:**
- Applied too broadly without justification
- Insufficient understanding of consistency implications
- Lack of operational maturity for distributed patterns

## Examples

**Good Application:**
- E-commerce order system with high read volume and complex reporting needs
- Event sourcing systems where read models are projections
- Systems with clear read/write separation requirements

**Poor Application:**
- Simple CRUD applications with balanced read/write patterns
- Early-stage systems with unclear requirements
- Teams without distributed systems experience

