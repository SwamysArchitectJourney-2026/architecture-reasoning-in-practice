# AIOps Anomaly Detection System

## Context

You need to design an anomaly detection system for a large-scale AIOps platform that processes millions of metrics, logs, and traces per second from Salesforce services. The system must detect anomalies in real-time to enable proactive incident response.

## Ambiguities

- What types of anomalies need to be detected? (point anomalies, contextual anomalies, collective anomalies)
- What is the acceptable latency for detection?
- What is the acceptable false positive rate?
- How should the system handle concept drift?
- What is the scale requirement? (metrics per second, services)
- What is the budget for compute resources?

## Clarifying Questions

- What is the primary goal: reducing MTTR, preventing outages, or both?
- What is the acceptable detection latency? (sub-second, seconds, minutes)
- What is the current false positive rate, and what is the target?
- How are anomalies currently detected, if at all?
- What types of data sources are available? (metrics, logs, traces)
- What is the expected volume? (metrics/sec, services, tenants)
- Are there labeled incident data available for supervised learning?
- What is the budget for compute and storage?

## Trade-offs Analysis

**Option 1: Statistical Methods Only**
- Z-score, IQR, moving averages
- Pros: Simple, interpretable, low latency, low compute cost
- Cons: Limited to simple patterns, high false positives, doesn't handle complex correlations

**Option 2: Unsupervised ML Only**
- Isolation Forest, Autoencoders, DBSCAN
- Pros: Handles complex patterns, no labels needed, good for high-dimensional data
- Cons: Higher compute cost, less interpretable, may miss known patterns

**Option 3: Supervised ML Only**
- XGBoost, Random Forest, Neural Networks
- Pros: Highest accuracy with labels, explainable (tree-based), can learn from incidents
- Cons: Requires labeled data, may not detect novel anomalies, retraining overhead

**Option 4: Ensemble Approach (Recommended)**
- Combine statistical, unsupervised, and supervised methods
- Pros: Robust, reduces false positives, handles diverse anomaly types
- Cons: More complex, higher compute cost, requires orchestration

## Structured Reasoning

**Recommended Approach:**

1. **Problem Framing**
   - Restate: "Build a system that detects anomalies in service metrics, logs, and traces to enable proactive incident response"
   - Stakeholders: SRE teams, on-call engineers, service owners
   - Constraints: Real-time (sub-second latency), scale (millions of metrics/sec), low false positives

2. **Architecture (High-Level)**
   > "We'd build a multi-stage pipeline: real-time ingestion via Kafka, feature engineering and aggregation in Flink, anomaly detection using ensemble models (statistical + ML), alerting with confidence scoring, and feedback loops for continuous improvement. The architecture would be horizontally scalable and handle concept drift."

3. **Key Components**
   - **Data Ingestion**: Kafka topics partitioned by service, schema registry for validation
   - **Feature Engineering**: Rolling windows, rate of change, percentiles, cross-service correlations
   - **Models**: Isolation Forest for high-dimensional, LSTM for temporal, ensemble for robustness
   - **Alerting**: Confidence thresholds, alert grouping, suppression rules
   - **Feedback**: Human feedback loop, model retraining pipeline

4. **Trade-offs to Articulate**
   - **Model complexity vs Latency**: Deep learning vs statistical methods
   - **False positives vs False negatives**: Alert fatigue vs missed incidents
   - **Real-time vs Batch**: Streaming vs periodic analysis
   - **Unsupervised vs Supervised**: No labels needed vs better accuracy with labels

5. **Production Considerations**
   - **Concept drift**: Online learning, periodic retraining, drift detection (KS test, PSI)
   - **False positives**: Ensemble methods, confidence scoring, human-in-the-loop feedback
   - **Scale**: Sampling, dimensionality reduction, distributed inference
   - **Signal fusion**: Feature-level fusion, decision-level fusion, attention mechanisms

## Reflections

- How do you balance detection accuracy with operational overhead?
- What signals indicate you should use supervised vs unsupervised methods?
- How do you handle the trade-off between false positives and false negatives?
- What makes an anomaly detection system production-ready?
- How do you ensure the system adapts to changing patterns over time?

