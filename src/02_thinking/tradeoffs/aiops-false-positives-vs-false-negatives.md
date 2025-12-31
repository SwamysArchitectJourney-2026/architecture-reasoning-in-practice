# AIOps: False Positives vs False Negatives

## Summary

A way to reason about the trade-off between alert fatigue (false positives) and missed incidents (false negatives) in AIOps systems.

## When to Use

Use when tuning anomaly detection thresholds, incident prediction models, or alerting systems where both false positives and false negatives have significant operational impact.

## How to Apply

- Identify the cost of false positives (alert fatigue, operational overhead)
- Identify the cost of false negatives (missed incidents, business impact)
- Assess acceptable rates for each (precision vs recall targets)
- Consider confidence scoring and adaptive thresholds
- Evaluate ensemble methods and signal fusion to reduce both

## Key Considerations

**False Positives (Alert Fatigue):**
- High operational overhead (engineers ignore alerts)
- Loss of trust in the system
- Wasted resources investigating non-issues
- Mitigation: Confidence scoring, alert grouping, suppression rules

**False Negatives (Missed Incidents):**
- Business impact (outages, SLA violations)
- Loss of trust in proactive capabilities
- Reactive firefighting instead of prevention
- Mitigation: Lower thresholds, ensemble methods, multiple signals

**Balancing Strategies:**
- Confidence scoring with adaptive thresholds
- Ensemble methods combining multiple models
- Signal fusion across metrics, logs, traces
- Human-in-the-loop feedback for continuous improvement
- Context-aware thresholds (time of day, service criticality)

## Trade-off Examples

- **High-stakes services**: Lower false negative rate, accept more false positives
- **Low-stakes services**: Lower false positive rate, accept occasional false negatives
- **Time-sensitive incidents**: Prioritize recall (lower false negatives)
- **Resource-constrained teams**: Prioritize precision (lower false positives)

