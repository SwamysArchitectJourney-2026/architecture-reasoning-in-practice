# AIOps Drift in Production (Scenario)

## Scenario

An ML-powered ops feature worked well for months, then gradually became less useful.
Operators report more noise and missed issues, especially after frequent releases and traffic pattern changes.

Your task is to explain a *practical* drift strategy: what you measure, when you react, and how you ship changes safely.

## Clarify what “drift” means here

- Is the problem input distribution shift, output distribution shift, or “human trust” drift?
- What’s the cost of being wrong (false alarm vs missed incident)?
- What’s the cadence of change (deployments/day, config churn, seasonality)?

## A useful mental model

Treat drift handling as three loops:

1. **Detect**: notice that today differs from yesterday
2. **Decide**: determine whether the difference matters
3. **Deploy**: roll out changes without making things worse

## What to monitor (examples)

- **Data health**: missingness, cardinality, schema/field changes, outliers
- **Score behavior**: confidence distribution shifts, alert volume shifts
- **Downstream outcomes**: operator actions (dismissed vs acknowledged), time-to-triage, precision at top-K

## Response options (trade-offs)

### Option A: time-based refresh

- Works when change is steady and predictable
- Risk: wasteful retrains and slow reaction to sudden shifts

### Option B: event-based refresh

- Trigger on deployment waves, config changes, or telemetry shifts
- Risk: over-triggering and operational complexity

### Option C: adaptive models / thresholding

- Good for gradual changes; reduces manual tuning
- Risk: can “chase noise” without guardrails

## Safety rails (make these explicit)

- Version everything (data, features, model, thresholds)
- Validate with replay/shadow/canary before full rollout
- Keep rollback fast and boring

## What a strong answer sounds like

- You separate “distribution changed” from “performance degraded”
- You propose simple default actions first, then automation
- You explain how the org reviews drift changes (who signs off, what metrics)
