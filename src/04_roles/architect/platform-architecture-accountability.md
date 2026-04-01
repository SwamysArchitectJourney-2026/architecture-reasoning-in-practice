# Platform Architecture Accountability

## Purpose

Define what an architect is accountable for when a platform spans data, AI-enabled capabilities, and multiple engineering teams.

## Accountability Areas

### 1. System Boundary Ownership

Architects are accountable for:

- defining platform boundaries that prevent accidental coupling
- identifying which responsibilities stay centralized versus delegated
- documenting external contracts and integration points

### 2. Quality Attribute Prioritization

Architects are accountable for:

- explicit quality priorities (reliability, latency, security, data trust, cost)
- making trade-off decisions visible to stakeholders
- ensuring architecture decisions are testable and reviewable

### 3. Cross-Functional Decision Alignment

Architects are accountable for:

- aligning product, data, security, and operations perspectives
- resolving conflicting constraints without hiding trade-offs
- maintaining a decision log for major architecture choices

### 4. Data Trust and Integrity Posture

Architects are accountable for:

- architecture-level controls for data quality, lineage, and auditability
- boundaries between source-of-truth systems and derived views
- failure handling paths when data contracts are violated

### 5. Evolution Strategy

Architects are accountable for:

- incremental modernization over risky full rewrites
- sequencing changes to reduce migration risk
- defining stop/go criteria for architecture transitions

### 6. AI-Assisted Engineering Guardrails

Architects are accountable for:

- defining where AI-assisted workflows are safe to apply
- requiring validation and observability for AI-influenced outputs
- setting review standards before AI-generated artifacts affect critical systems

## What This Is Not

This file does not define implementation details or team-level sprint execution.
It defines role-level accountability and decision ownership.

## Readiness Check

You are operating at architect level if you can:

- defend boundary decisions under challenge
- connect architecture choices to business outcomes
- explain trade-offs without defaulting to tool preferences
- show how reliability and data trust are protected during change
