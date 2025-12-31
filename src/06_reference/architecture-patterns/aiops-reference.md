# AIOps Reference Materials

## Purpose

Reference materials for AIOps (AI for IT Operations) concepts, tools, and best practices.

## Core Concepts

### Anomaly Detection
- **Statistical methods**: Z-score, IQR, moving averages
- **Unsupervised ML**: Isolation Forest, Autoencoders, DBSCAN
- **Supervised ML**: XGBoost, Random Forest, Neural Networks
- **Time-series**: ARIMA, Prophet, LSTM, Transformer models

### Incident Prediction
- **Time-series forecasting**: Prophet, LSTM for leading indicators
- **Classification**: XGBoost, Random Forest for incident likelihood
- **Feature engineering**: Error rates, latency trends, resource utilization
- **Handling imbalanced classes**: SMOTE, class weights, focal loss

### Root Cause Analysis
- **Graph-based methods**: Dependency graphs, graph neural networks
- **Causal inference**: Granger causality, correlation analysis
- **Signal fusion**: Metrics, logs, traces correlation
- **Explainability**: SHAP values, evidence chains, visualization

## Streaming and Processing

### Frameworks
- **Kafka**: Distributed streaming platform for ingestion
- **Flink**: Low-latency stream processing
- **Spark Streaming**: Batch-like stream processing
- **Kafka Streams**: Lightweight stream processing

### Concepts
- **Windowing**: Tumbling, sliding, session windows
- **State management**: RocksDB, Redis for stateful operations
- **Exactly-once semantics**: Checkpointing, idempotency
- **Backpressure**: Handling spikes, circuit breakers

## Observability

### Three Pillars
- **Metrics**: Time-series data (InfluxDB, TimescaleDB)
- **Logs**: Event data (Elasticsearch, Splunk)
- **Traces**: Request flows (Jaeger, Zipkin)

### Correlation
- **Trace IDs**: Unified identifiers across services
- **Service mesh**: Automatic instrumentation
- **Dependency graphs**: Service relationships

## MLOps for AIOps

### Components
- **Feature stores**: Feast, Tecton for feature consistency
- **Model serving**: TensorFlow Serving, TorchServe
- **Model monitoring**: Drift detection, performance metrics
- **CI/CD**: Automated testing, validation, deployment

### Practices
- **Model versioning**: MLflow, model registries
- **A/B testing**: Validation before rollout
- **Retraining**: Automated pipelines, drift detection
- **Rollback**: Blue-green deployments, canary releases

## Systems Engineering

### OS Concepts
- **CPU**: Context switching, scheduling, NUMA
- **Memory**: Page faults, swap, OOM
- **I/O**: Disk I/O, network I/O, blocking vs non-blocking

### JVM Concepts
- **Memory model**: Heap, GC algorithms (G1, ZGC)
- **Threading**: Thread pools, concurrent collections
- **Profiling**: JVM profilers, heap dumps, GC logs

### Database Concepts
- **Query performance**: Indexes, query plans
- **Connection pooling**: Pool sizing, connection leaks
- **Replication lag**: Read replicas, consistency

### APM Concepts
- **Instrumentation**: Code-level, bytecode, auto-instrumentation
- **Metrics**: Response time, throughput, error rates
- **Distributed tracing**: Span collection, trace sampling

## Evaluation Metrics

### Anomaly Detection
- **Precision**: True positives / (True positives + False positives)
- **Recall**: True positives / (True positives + False negatives)
- **F1 Score**: Harmonic mean of precision and recall
- **ROC-AUC**: Area under ROC curve
- **PR-AUC**: Area under precision-recall curve (better for imbalanced classes)

### Time-Series Forecasting
- **MAE**: Mean Absolute Error
- **RMSE**: Root Mean Squared Error
- **MAPE**: Mean Absolute Percentage Error

## Common Patterns

### Concept Drift Handling
- **Drift detection**: PSI (Population Stability Index), KS test
- **Online learning**: Incremental model updates
- **Retraining**: Automated pipelines triggered by drift

### Signal Fusion
- **Feature-level fusion**: Combine features before modeling
- **Decision-level fusion**: Combine model outputs
- **Attention mechanisms**: Weight signals by importance

### Scaling ML Inference
- **Batching**: Batch inference for throughput
- **Model optimization**: Quantization, pruning, distillation
- **Caching**: Feature caching, prediction caching
- **Distributed inference**: Horizontal scaling, model sharding

