# AIOps Data Scientist/Architect Role Preparation

## Role Focus

**AIOps Data Scientist/Architect** focus on:
- AIOps platform design and implementation
- ML models for operational intelligence
- Real-time streaming and observability
- Systems engineering (OS, JVM, DB, APM)
- MLOps and model deployment

## Preparation Path

### Step 1: Master the Foundations (Required for All)

Study these first:

1. **Problem Framing** (`../../01_reasoning-foundations/problem-framing.md`)
2. **Top-Down Communication** (`../../02_answer-structuring/top-down-communication.md`)
3. **Trade-off Articulation** (`../../03_tradeoff-articulation/`)

### Step 2: AIOps-Specific Scenarios

Practice these scenarios (all in `../../05_evaluation-scenarios/`):

1. **AIOps Anomaly Detection System** (`aiops-anomaly-detection-system.md`)
   - Design anomaly detection at scale
   - Statistical vs ML approaches
   - False positives vs false negatives

2. **AIOps Incident Prediction** (`aiops-incident-prediction.md`)
   - Predict incidents before they happen
   - Time-series forecasting
   - Handling imbalanced classes

3. **AIOps Root Cause Analysis** (`aiops-root-cause-analysis.md`)
   - Root cause analysis at scale
   - Graph-based methods
   - Causal inference

4. **AIOps Streaming Pipeline** (`aiops-streaming-pipeline.md`)
   - Real-time processing
   - Exactly-once semantics
   - Scaling considerations

5. **AIOps Concept Drift** (`aiops-concept-drift.md`)
   - Handle concept drift in production
   - Drift detection
   - Retraining strategies

### Step 3: AIOps-Specific Trade-offs

Understand these trade-offs (all in `../../03_tradeoff-articulation/`):

1. **AIOps Accuracy vs Latency** (`aiops-accuracy-vs-latency.md`)
   - Model complexity vs inference speed
   - Real-time requirements

2. **AIOps False Positives vs False Negatives** (`aiops-false-positives-vs-false-negatives.md`)
   - Alert fatigue vs missed incidents
   - Confidence scoring

3. **AIOps Real-Time vs Batch** (`aiops-real-time-vs-batch.md`)
   - Streaming vs batch processing
   - Lambda vs Kappa architecture

### Step 4: AIOps Reference Materials

Study these resources:

1. **AIOps Reference** (`../../resources/aiops-reference.md`)
   - Core concepts
   - Tools and frameworks
   - Evaluation metrics
   - Common patterns

2. **AIOps Interview Preparation** (`../../resources/aiops-interview-preparation.md`)
   - Comprehensive preparation guide
   - Answer framework
   - Practice checklist

### Step 5: Interview Materials

Review role-specific interview materials:
- `../../../source-material/Architect_Interview_2.md`
- `../../../source-material/Architect_Interview_2_Preparation.md`
- `../../../source-material/Architect_Interview_2_Quick_Reference.md`

## Key Topics to Master

### Anomaly Detection
- Statistical methods (Z-score, IQR)
- Unsupervised ML (Isolation Forest, Autoencoders)
- Supervised ML (XGBoost, Random Forest)
- Time-series analysis (ARIMA, Prophet, LSTM)

### Incident Prediction
- Time-series forecasting
- Classification models
- Feature engineering
- Handling imbalanced classes

### Root Cause Analysis
- Graph-based methods
- Causal inference
- Signal fusion
- Explainability

### Real-Time Streaming
- Kafka, Flink, Spark Streaming
- Windowing and state management
- Exactly-once semantics
- Backpressure handling

### Observability
- Metrics, logs, traces
- Time-series databases
- Distributed tracing
- Correlation

### MLOps
- Feature stores
- Model serving
- Drift detection
- Model versioning
- A/B testing

### Systems Engineering
- OS concepts (CPU, memory, I/O)
- JVM (GC, threading, profiling)
- Database (query optimization, connection pooling)
- APM (instrumentation, distributed tracing)

## Practice Exercises

1. **Design anomaly detection system**
   - Architecture
   - Model selection
   - Trade-offs

2. **Design streaming pipeline**
   - Ingestion
   - Processing
   - Storage

3. **Handle concept drift**
   - Detection
   - Retraining
   - Validation

## Interview Tips

- **Connect ML to operations** - Show you understand operational reality
- **Always mention trade-offs** - Accuracy vs latency, false positives vs false negatives
- **Show production thinking** - Latency, scale, reliability, cost
- **Demonstrate systems knowledge** - OS, JVM, DB, APM
- **Start high-level** - Go deeper only if asked

## Common Questions

- "Design an anomaly detection system"
- "How do you predict incidents?"
- "How do you perform root cause analysis?"
- "Design a real-time streaming pipeline"
- "How do you handle concept drift?"

---

**Next Steps**: Start with foundations, practice AIOps scenarios, review reference materials and interview prep guide.

