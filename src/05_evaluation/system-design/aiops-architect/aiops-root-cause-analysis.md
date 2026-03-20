# AIOps Root Cause Analysis (Scenario)

## Scenario

During an incident, responders see many symptoms across multiple services.
Your job is to propose an approach that helps an on-call engineer narrow down *likely causes* quickly and explain why.

## What to clarify early

- Do we need “best guess in 60 seconds” or “deep analysis in 10 minutes”?
- Is the goal live triage, post-incident learning, or both?
- Do we have reliable service topology and deployment/change data?
- What evidence format is useful: ranked suspects, a path through dependencies, or a narrative?

## A good framing

Separate the problem into:

1. **Context**: topology + recent changes (deployments, config, feature flags)
2. **Signals**: anomalies in metrics, logs, traces
3. **Reasoning**: ranking candidates and explaining the ranking

## Approaches to compare (and when)

### Correlation + time ordering

- Fast and often “good enough” for obvious cascades
- Risk: spurious correlation and noisy blast radii

### Dependency/topology-guided ranking

- Use service calls and ownership boundaries to constrain the search
- Risk: stale or incomplete topology gives misleading answers

### Causal-style checks (careful with claims)

- Useful to test hypotheses (did X precede Y consistently?)
- Risk: overclaiming causality from observational data

## What makes it trustworthy

- Clear “evidence chain”: what changed, what broke first, what downstream suffered
- Multiple independent signals supporting the same suspect
- A way for humans to correct the system (feedback + annotations)

## Pitfalls to call out

- Confusing propagation paths with root cause
- Ignoring deployments/config changes as first-class signals
- Producing too much output during an incident (operators need prioritization)

## What you’d present

- A ranked list of suspects with evidence summaries
- A fast path (triage mode) and a deeper path (postmortem mode)
- A feedback mechanism that improves future incidents
