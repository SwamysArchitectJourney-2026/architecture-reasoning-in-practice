# AIOps Real-Time Streaming Pipeline

## Context

You need to design a real-time streaming pipeline that processes millions of metrics, logs, and traces per second with low latency for an AIOps platform. The pipeline must handle exactly-once semantics, scale horizontally, and be fault-tolerant.

## Ambiguities

- What is the acceptable latency? (sub-second, seconds)
- What is the expected throughput? (events per second)
- What level of consistency is required? (exactly-once, at-least-once)
- How should the system handle late-arriving data?
- What is the budget for compute and storage?

## Clarifying Questions

- What is the primary use case: real-time detection, aggregation, or both?
- What is the acceptable latency? (sub-second, seconds, minutes)
- What is the expected volume? (events/sec, peak vs average)
- What level of consistency is required? (exactly-once, at-least-once)
- How should late-arriving data be handled?
- What is the retention period for data?
- What is the budget for compute and storage?

## Trade-offs Analysis

**Option 1: Lambda Architecture**
- Real-time stream processing + batch processing for accuracy
- Pros: Handles both real-time and historical analysis, accurate results
- Cons: More complex, higher operational overhead, data duplication

**Option 2: Pure Streaming**
- Real-time processing only, no batch layer
- Pros: Simpler, lower latency, lower cost
- Cons: May miss late-arriving data, less accurate for historical analysis

**Option 3: Kappa Architecture (Recommended)**
- Single streaming pipeline, replay for historical analysis
- Pros: Simpler than lambda, handles both real-time and historical
- Cons: Requires replay capability, may be slower for historical queries

## Structured Reasoning

**Recommended Approach:**

1. **Problem Framing**
   - Restate: "Process millions of metrics, logs, and traces per second with low latency"
   - Stakeholders: Data science teams, SRE teams, platform engineers
   - Constraints: Latency (<1s), throughput (millions/sec), exactly-once semantics

2. **Architecture (High-Level)**
   > "We'd use Kafka for ingestion with partitioning by service/tenant, Flink for stream processing with windowing for aggregations, time-series DBs for metrics storage, and distributed search for logs. We'd implement backpressure handling, exactly-once processing, and auto-scaling. The architecture would be fault-tolerant with checkpointing and replication."

3. **Key Components**
   - **Ingestion**: Kafka topics, schema registry, partitioning strategy
   - **Processing**: Flink operators, windowing (tumbling/sliding), state management
   - **Storage**: Time-series DB for metrics, Elasticsearch for logs, trace stores for traces
   - **Reliability**: Exactly-once semantics, checkpointing, replication, failure recovery
   - **Scaling**: Horizontal scaling, dynamic partitioning, auto-scaling based on lag

4. **Trade-offs to Articulate**
   - **Latency vs Throughput**: Smaller batches vs larger batches
   - **Exactly-once vs At-least-once**: Consistency vs performance
   - **Managed vs Self-hosted**: Cloud services vs control and cost
   - **Real-time vs Batch**: Streaming vs periodic analysis

5. **Production Considerations**
   - **Late data**: Watermarks, allowed lateness, side outputs
   - **Data quality**: Schema validation, anomaly detection in streams, dead letter queues
   - **Scaling**: Horizontal scaling, dynamic partitioning, auto-scaling
   - **Schema evolution**: Schema registry, backward compatibility, versioning
   - **Backpressure**: Handling spikes, circuit breakers, adaptive scaling

## Reflections

- How do you balance latency with throughput in streaming systems?
- What makes a streaming pipeline production-ready?
- How do you handle schema evolution without breaking downstream consumers?
- How do you ensure exactly-once semantics at scale?
- What level of automation is appropriate for scaling decisions?

