# AIOps Streaming Pipeline (Scenario)

## Scenario

Your platform team wants a single “observability ingestion and processing backbone” that can support:

- Real-time alerting and anomaly detection
- Near-real-time dashboards
- Post-incident replay and deeper analytics

You’re asked to sketch the design and defend key trade-offs.

## Clarify first (don’t assume)

- What’s the target end-to-end latency for *alerts* vs *dashboards*?
- What’s the rough event volume (and which signal dominates: logs vs metrics vs traces)?
- How long do we need to retain raw data for replay?
- Do we need cross-signal correlation in real time or can some of it be offline?
- Who are the consumers and what contracts do they expect?

## Decompose the pipeline

Think in stages (each stage has its own failure modes):

1. **Collection**: agents/collectors close to workloads
2. **Ingestion buffer**: durable queue/event bus
3. **Stream processing**: normalize, enrich, correlate, score
4. **Storage tiers**: raw (replay), hot (fast), curated (query)
5. **Consumption**: alerting, dashboards, investigations

## Decisions to articulate

- **Delivery semantics**: at-least-once is simpler; exactly-once is possible but not “free”
- **Backpressure strategy**: where to shed load, where to buffer, and what to drop first
- **Schema evolution**: versioning and validation so producers don’t break consumers
- **Reprocessing**: how to replay safely without duplicating side effects

## Failure thinking (what you’d monitor)

- Producer error rate and ingestion lag
- Consumer lag and processing latency percentiles
- Dead-letter volume and retry storms
- Hot partitions / skew and uneven load
- Schema validation failures and incompatible changes

## What you’d present in a senior technical evaluation

- A minimal pipeline that meets the strictest latency path
- How it scales with volume and burstiness
- Where you enforce contracts (schemas) and how you enable replay
- A short plan for observability and operational runbooks
