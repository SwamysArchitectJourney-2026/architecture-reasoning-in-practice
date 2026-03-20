# Model Artifact Portability vs Operability

## Summary

Choose artifact format based on deployment boundary, lifecycle risk, and interoperability needs.

## When to Use

Use this trade-off when deciding how to package ML model outputs for:

- local experimentation
- cross-team handoff
- production deployment
- long-lived model governance

## How to Apply

1. Define the execution boundary first
   - single Python codebase
   - polyglot runtime
   - offline batch vs online serving
2. Decide what must remain stable over time
   - architecture code
   - weight tensors
   - inference contract
3. Choose a packaging strategy that matches failure tolerance
   - fast local iteration
   - safer long-term portability

## Decision Lens

### Option A: Full object serialization

Useful when:

- speed of local experimentation is the top priority
- producer and consumer share the same runtime assumptions

Risks:

- brittle across code refactors
- higher coupling to implementation details
- weaker portability across environments

### Option B: Weights-only checkpointing

Useful when:

- architecture is managed explicitly in code
- versioned reproducibility matters
- deployment discipline is required

Risks:

- requires stronger config and model-construction governance
- can fail if architecture and weights drift apart

### Option C: Interchange-oriented export

Useful when:

- serving targets span multiple runtimes
- model handoff crosses language/platform boundaries

Risks:

- conversion friction and compatibility checks
- feature parity gaps between source and target runtimes

## Trade-offs

Benefits of operability-first packaging:

- better upgrade safety
- clearer model lifecycle boundaries
- easier long-term maintenance

Costs of operability-first packaging:

- slower initial setup
- more explicit versioning and validation work

## Practical Rule

For short-lived experiments, optimize for speed.
For production paths, optimize for explicit contracts and replayable deployment.

## Review Questions

- What breaks first if code changes next month?
- Can another team run this artifact without your local environment?
- Is rollback possible without manual reconstruction?
- Is observability tied to artifact version and runtime behavior?
