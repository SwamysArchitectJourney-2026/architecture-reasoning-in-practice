# AIOps Interview Preparation Guide

## Purpose

This document provides a structured approach to preparing for AIOps Data Scientist/Architect interviews, specifically for roles focused on building AIOps platforms for large-scale services.

## Position Context

**Role**: Applied AI Data Scientist, AIOps and Scale Products, PMTS/Architect  
**Focus**: AIOps Platform for Salesforce Services

## Key Responsibilities

- Lead design and implementation of scalable data science architectures for AIOps
- Develop and deploy ML models for predictive analytics, anomaly detection, and root cause analysis
- Collaborate with cross-functional teams to deliver impactful AIOps solutions
- Provide technical leadership and mentorship
- Ensure integrity, accuracy, and security of operational data

## Core Topics to Master

### 1. Anomaly Detection
- See: `05_evaluation-scenarios/aiops-anomaly-detection-system.md`
- See: `03_tradeoff-articulation/aiops-accuracy-vs-latency.md`
- See: `03_tradeoff-articulation/aiops-false-positives-vs-false-negatives.md`

### 2. Incident Prediction
- See: `05_evaluation-scenarios/aiops-incident-prediction.md`

### 3. Root Cause Analysis
- See: `05_evaluation-scenarios/aiops-root-cause-analysis.md`

### 4. Real-Time Streaming
- See: `05_evaluation-scenarios/aiops-streaming-pipeline.md`
- See: `03_tradeoff-articulation/aiops-real-time-vs-batch.md`

### 5. Concept Drift
- See: `05_evaluation-scenarios/aiops-concept-drift.md`

### 6. Observability Architecture
- See: `resources/aiops-reference.md` (Observability section)

### 7. MLOps for AIOps
- See: `resources/aiops-reference.md` (MLOps section)

### 8. Systems Engineering
- See: `resources/aiops-reference.md` (Systems Engineering section)

## Answer Framework

Apply the reasoning frameworks from this repository:

1. **Problem Framing** (`01_reasoning-foundations/problem-framing.md`)
   - Restate the problem
   - Identify stakeholders and constraints
   - Separate facts from assumptions

2. **Top-Down Communication** (`02_answer-structuring/top-down-communication.md`)
   - Start high-level (30 seconds)
   - Go deeper only if asked
   - Control depth

3. **Trade-off Articulation** (`03_tradeoff-articulation/`)
   - Always mention trade-offs
   - Use AIOps-specific trade-offs from this repository

4. **Risk and Failure Framing** (`03_tradeoff-articulation/risk-and-failure-framing.md`)
   - List failure modes
   - Estimate impact
   - Choose mitigations

## Practice Scenarios

Work through each scenario in `05_evaluation-scenarios/`:
- `aiops-anomaly-detection-system.md`
- `aiops-incident-prediction.md`
- `aiops-root-cause-analysis.md`
- `aiops-streaming-pipeline.md`
- `aiops-concept-drift.md`

For each scenario:
1. Read the context and ambiguities
2. Formulate clarifying questions
3. Analyze trade-offs
4. Structure your reasoning
5. Reflect on your approach

## Key Trade-offs to Understand

- **Accuracy vs Latency**: `03_tradeoff-articulation/aiops-accuracy-vs-latency.md`
- **False Positives vs False Negatives**: `03_tradeoff-articulation/aiops-false-positives-vs-false-negatives.md`
- **Real-Time vs Batch**: `03_tradeoff-articulation/aiops-real-time-vs-batch.md`

## Reference Materials

See `resources/aiops-reference.md` for:
- Core concepts and algorithms
- Tools and frameworks
- Evaluation metrics
- Common patterns

## Preparation Checklist

### Technical Topics
- [ ] Anomaly detection algorithms (Isolation Forest, Autoencoders, LSTM)
- [ ] Time-series analysis (ARIMA, Prophet, forecasting)
- [ ] Streaming frameworks (Kafka, Flink, Spark Streaming)
- [ ] Observability stack (metrics, logs, traces)
- [ ] MLOps practices (feature stores, model serving, monitoring)
- [ ] Systems engineering (OS, JVM, DB, APM concepts)
- [ ] Model evaluation (precision, recall, ROC-AUC, handling imbalanced classes)
- [ ] Feature engineering for operational data

### Practice
- [ ] Work through all AIOps scenarios
- [ ] Practice 30-second architecture summaries
- [ ] Rehearse trade-off explanations
- [ ] Prepare STAR stories for behavioral questions

### Frameworks
- [ ] Apply Problem Framing to each scenario
- [ ] Practice Top-Down Communication
- [ ] Articulate trade-offs clearly
- [ ] Frame risks and failures

## Interview Tips

**Do:**
- Start high-level, go deeper if asked
- Always mention trade-offs
- Connect ML/AI to operational reality
- Admit what you'd change (shows maturity)
- Ask clarifying questions

**Don't:**
- Use buzzwords without context
- Over-explain or ramble
- Ignore production considerations
- Pretend to know everything

## Answer Pattern

**Every answer should follow:**
> Context → Problem → Solution Architecture → Trade-offs → Production Considerations

**Example:**
> "For anomaly detection, we need to identify unusual patterns in operational data to enable proactive incident response. The challenge is balancing detection accuracy with low latency and scale. We'd use a multi-layered approach combining statistical methods for baselines, unsupervised ML for complex patterns, and supervised models where labels exist. The trade-off is between model complexity and inference latency—we optimize models and use caching to balance this. In production, we handle concept drift through continuous monitoring and automated retraining pipelines."

## Related Resources

- Original preparation guide: `source-material/Architect_Interview_2_Preparation.md`
- Quick reference: `source-material/Architect_Interview_2_Quick_Reference.md`
- Job requisition: `source-material/Architect_Interview_2.md`

