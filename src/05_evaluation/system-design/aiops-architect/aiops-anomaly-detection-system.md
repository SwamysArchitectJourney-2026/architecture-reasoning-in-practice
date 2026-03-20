# AIOps Anomaly Detection System (Scenario)

## Scenario

You’re asked to design anomaly detection for a large, multi-tenant operations platform.
The platform ingests high-volume telemetry (metrics/logs/traces) and needs near-real-time signals that help responders act.

This is a reasoning exercise: focus on *how you think and communicate*, not a fully detailed implementation.

## First 2 minutes: clarify the goal

- Is the primary outcome alerting, automated mitigation, or investigation support?
- What “anomaly” matters here (SLO burn, sudden error-rate jump, unusual dependency fan-out, latent saturation)?
- What’s the tolerance for noisy alerts (alert fatigue) vs missed detections (silent failure)?
- What’s the time budget for detection and routing (sub-second vs “within a minute”)?
- Is this per-service, per-tenant, or fleet-wide detection?

## What makes this hard (name the constraints)

- Telemetry is messy (missing data, resets, cardinality explosions)
- Behavior changes (deployments, traffic shifts, seasonality)
- Correlation is common; causation is rare
- Operators need explanations, not just scores

## Reasoning approach (a simple framing)

Think of the system as three layers:

1. **Signal shaping**: clean + aggregate + define windows
2. **Detection**: generate candidates with confidence
3. **Decisioning**: suppress/route/group and capture feedback

This keeps the conversation structured even if tech choices change.

## Detection strategies to compare

### Strategy A: rule/statistical baselines

- Works well for clear, single-metric signals (latency p95, error rate)
- Low cost, high explainability
- Risk: brittle thresholds and “many small false positives”

### Strategy B: unsupervised detectors

- Useful when labels are sparse (new services, rare incidents)
- Can capture multi-dimensional patterns
- Risk: low interpretability and drift sensitivity

### Strategy C: supervised detectors (when you truly have labels)

- Best when you can define labels consistently (incident taxonomy, time windows)
- Works well for “known bad” patterns
- Risk: label noise + bias + poor novelty detection

### Strategy D: layered/ensemble (often the practical answer)

- Cheap first-pass candidates + heavier second-pass scoring
- Use separate models per signal type instead of “one model to rule them all”
- Risk: operational complexity (monitoring, versioning, retraining)

## What you should explicitly call out

- **Cardinality control**: how you prevent “one metric per user” from exploding compute
- **Feedback loop**: how operator actions become training/threshold input
- **Change awareness**: deployments and config changes as context for detection
- **Actionability**: grouping and routing rules matter as much as detection quality

## Deliverable (what you’d present in a senior technical evaluation)

- A crisp problem statement and success metrics
- A high-level pipeline with where decisions live (detection vs decisioning)
- 2–3 key trade-offs and why you choose a default
- A plan for drift + evaluation (how you know it’s improving)

