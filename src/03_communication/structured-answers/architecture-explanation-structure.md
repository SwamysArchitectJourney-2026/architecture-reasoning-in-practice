# Architecture Explanation Structure

## Summary

A structured approach to explaining complex architectures that respects time constraints, audience needs, and information hierarchy.

## When to Use

Use when:
- Explaining system architecture to stakeholders
- Presenting design decisions in technical reviews
- Communicating architecture to teams with varying technical depth
- Time is limited and depth must be controlled

## How to Apply

**Three-Layer Structure:**

1. **High-Level Overview** (30-60 seconds)
   - System boundaries and key components
   - Primary architectural patterns
   - Core technology choices
   - Main integration points
   - **Stop here unless asked to go deeper**

2. **Decision-Focused Details** (if requested)
   - Key architectural decisions and rationale
   - Trade-offs considered and chosen
   - Alternatives evaluated
   - Constraints that influenced choices

3. **Implementation Details** (only if specifically needed)
   - Specific technologies and versions
   - Configuration and deployment details
   - Code patterns and practices
   - Operational procedures

**Communication Principles:**

- **Lead with decisions, not tools**: Explain why choices were made
- **Frame as trade-offs**: Every decision has costs and benefits
- **Control depth**: Don't go deeper than needed
- **Use parking lot**: Defer topics that aren't immediately relevant
- **Confirm understanding**: Check if the level of detail is appropriate

**Example Pattern:**
> "At a high level, [system overview]. We chose [pattern/technology] because [rationale]. The trade-off was [cost/benefit]. [Invite questions or go deeper if needed]."

## Examples

**Effective Explanation:**
- Starts with system boundaries and key patterns
- Explains decisions and trade-offs clearly
- Goes deeper only when asked
- Uses clear, non-technical language where possible

**Ineffective Explanation:**
- Dives into implementation details immediately
- Lists tools without explaining decisions
- Assumes audience needs all information upfront
- Uses jargon without context

