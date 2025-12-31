# Vague Problem

## Context

A stakeholder asks for a "faster" system without specifying what "faster" means.

## Ambiguities

- What user journey or workload is slow?
- What latency metric matters (p50/p95/p99)?
- What changed recently?

## Clarifying Questions

- What is the primary success metric and target?
- Which workflows are most important?
- What constraints exist (budget, timelines, compliance)?

## Trade-offs Analysis

- Optimize the hot path vs. broad architectural change.
- Instrumentation-first vs. immediate performance tuning.

## Structured Reasoning

Start by defining measurable goals, then gather data, then choose targeted improvements with clear rollback.

## Reflections

How would you avoid optimizing the wrong thing?

