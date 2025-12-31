# Microservices Transaction Management

## Context

A system requires operations that span multiple microservices, but distributed transactions are not feasible. You need to design a reliable approach to maintain data consistency across service boundaries.

## Ambiguities

- Which operations truly require cross-service consistency?
- What level of consistency is acceptable?
- How should failures be handled?
- What are the performance and latency implications?

## Clarifying Questions

- Which operations must be strongly consistent vs eventually consistent?
- What are acceptable failure modes and recovery strategies?
- How should compensating actions be designed?
- What observability is needed for distributed workflows?

## Trade-offs Analysis

**Option 1: Distributed Transactions (2PC)**
- Strong consistency guarantees
- Pros: ACID properties across services
- Cons: Performance impact, availability trade-offs, complexity

**Option 2: Saga Pattern (Choreography)**
- Event-driven coordination
- Pros: Loose coupling, scalability
- Cons: Complex failure handling, eventual consistency

**Option 3: Saga Pattern (Orchestration)**
- Centralized workflow coordination
- Pros: Clear control flow, easier debugging
- Cons: Orchestrator becomes bottleneck, single point of failure

**Option 4: Eventual Consistency with Compensation**
- Accept temporary inconsistency
- Pros: High availability, performance
- Cons: Complex compensation logic, user experience challenges

## Structured Reasoning

**Recommended Approach:**

1. **Avoid Distributed Transactions**
   - Design services for eventual consistency
   - Accept that some operations span boundaries
   - Plan for failure and recovery

2. **Use Saga Patterns**
   - Choreography for loose coupling and scalability
   - Orchestration where business flow requires tight control
   - Implement compensating actions for rollback

3. **Ensure Reliability**
   - Design for idempotency
   - Implement retry and deduplication
   - Build observability for distributed workflows
   - Plan for failure detection and recovery

**Key Principle:**
> "We avoided distributed transactions. Instead, we designed services to be eventually consistent. For workflows spanning multiple services, we used saga patterns—mostly choreography using events, and orchestration only where business flow required tight control. Idempotency and compensating actions were critical to make this reliable."

## Reflections

- How do you determine which consistency model fits each operation?
- What makes a good compensating action?
- How do you balance consistency with availability and performance?
- What observability is essential for distributed workflows?

