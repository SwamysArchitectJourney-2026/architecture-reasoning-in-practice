# Explaining Complex Architecture

**Tags**: `architect`, `principal-engineer`  
**Difficulty**: Intermediate  
**Time**: 30-45 minutes

## Context

You need to explain a microservices-based system that uses multiple architectural patterns, polyglot persistence, cloud services, and AI integration to stakeholders with limited time and varying technical depth.

## Ambiguities

- What level of detail does the audience need?
- Which aspects are most critical to communicate?
- How much time is available?
- What are the key concerns or questions?

## Clarifying Questions

- What is the primary goal of this explanation?
- What decisions or trade-offs need to be understood?
- What level of technical depth is appropriate?
- Are there specific concerns to address?

## Trade-offs Analysis

**Option 1: High-Level Overview First**
- Start with system boundaries and key components
- Go deeper only if asked
- Pros: Respects time constraints, invites follow-up
- Cons: May miss critical details if not probed

**Option 2: Comprehensive Deep Dive**
- Cover all aspects in detail immediately
- Pros: Complete picture upfront
- Cons: Information overload, loses focus

**Option 3: Decision-Focused Narrative**
- Lead with key architectural decisions and rationale
- Pros: Highlights reasoning and trade-offs
- Cons: May skip important context

## Structured Reasoning

**Recommended Approach:**

1. **Start High-Level** (30-60 seconds)
   - System boundaries and key components
   - Primary architectural patterns
   - Core technology choices
   - Main integration points

2. **Invite Depth** (if asked)
   - Drill into specific areas of interest
   - Explain trade-offs for key decisions
   - Address concerns or questions

3. **Control Depth**
   - Use parking lot for deferred topics
   - Confirm level of detail needed
   - Stop when question is answered

**Example Structure:**
> "Our architecture follows a microservices approach built on .NET 8. Domain-Driven Design principles guide our service boundaries, ensuring alignment with business domains. We selectively implement CQRS in subsystems where read and write patterns diverge significantly. Our data strategy uses multiple database technologies: SQL Server provides strong transactional guarantees for core business operations, while MongoDB supports document-based read models with flexible schemas. Generative AI capabilities are integrated as supporting services rather than core dependencies, leveraging OpenAI APIs through Azure-hosted infrastructure on AKS, with React micro-frontends handling user interactions."

## Reflections

- How do you balance completeness with time constraints?
- What signals indicate you should go deeper or stay high-level?
- How do you handle questions that require significant context?
- What makes an architecture explanation effective for different audiences?

