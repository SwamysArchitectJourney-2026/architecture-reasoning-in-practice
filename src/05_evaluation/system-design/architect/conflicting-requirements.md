# Conflicting Requirements

## Context

A team needs both stronger consistency and lower latency across regions.

## Ambiguities

- Which operations require strong consistency?
- Are reads or writes more latency-sensitive?
- What failure modes are acceptable?

## Clarifying Questions

- What user experience breaks with eventual consistency?
- What is the acceptable write latency budget?
- Do we need multi-region writes?

## Trade-offs Analysis

- Strong consistency typically increases latency across distance.
- Partitioning features and data domains can isolate constraints.

## Structured Reasoning

Separate workloads by consistency needs, pick defaults, and document exceptions explicitly.

## Reflections

What criteria would force you to change the chosen consistency model?

