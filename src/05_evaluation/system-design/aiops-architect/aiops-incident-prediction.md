# AIOps Incident Prediction (Scenario)

## Scenario

Leadership wants “predict incidents before they happen”. Operators want fewer pages, not more dashboards.
You need to frame what “prediction” can realistically mean and how to make it operationally useful.

## Start by reframing the ask

- Predict *what* exactly: an outage, an SLO breach, a capacity event, or “risk trending up”? 
- What action will be taken if the model says “high risk”?
- What’s the minimum lead time required for that action to matter?

## Key challenge to call out

Incidents are rare and labels are messy.
A good answer focuses on *decision support* and *risk ranking*, not magical certainty.

## A practical approach (compare options)

### Option A: risk scoring from leading indicators

- Convert signals into a per-service “risk today” score (error rate slope, latency tail growth, saturation, dependency health)
- Pros: actionable ranking, works without perfect labels
- Cons: not a clean “incident yes/no” prediction

### Option B: incident classifier (only if labels are stable)

- Train a classifier where the target is clearly defined (taxonomy + time window)
- Pros: direct mapping to an outcome
- Cons: class imbalance, label drift, overfitting to last quarter’s failure modes

### Option C: hybrid decisioning

- Use lightweight forecasters/baselines to generate candidates, then a second-stage scorer for ranking
- Pros: balances cost and accuracy
- Cons: more moving parts to monitor

## Explainability (what operators need)

- “Why this service is risky” in 2–3 bullets
- The top contributing signals and their recent change
- A suggested *safe* action tier (notify → throttle → scale → shift traffic)

## Safety and governance

- Start with human-in-the-loop decisions
- Gate automation behind confidence + blast-radius rules
- Measure whether the system reduces toil (not just AUC)

## What to deliver in an evaluation

- A clear target definition and success metrics
- A risk-ranking design with explainability
- A rollout plan that avoids making on-call worse

