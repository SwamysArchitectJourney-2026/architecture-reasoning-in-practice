# AIOps Interview Preparation - Migration Summary

## Overview

The AIOps Data Scientist/Architect interview preparation content has been migrated from `source-material/Architect_Interview_2_Preparation.md` into the structured `src/` folder following the repository's organization patterns.

## Files Created

### Evaluation Scenarios (`src/05_evaluation-scenarios/`)

Five AIOps-specific scenarios following the repository's scenario format:

1. **`aiops-anomaly-detection-system.md`**
   - Design an anomaly detection system for large-scale AIOps
   - Covers statistical, unsupervised, and supervised approaches
   - Trade-offs: model complexity vs latency, false positives vs false negatives

2. **`aiops-incident-prediction.md`**
   - Design a system to predict incidents before they happen
   - Covers time-series forecasting and classification models
   - Trade-offs: prediction horizon, explainability vs accuracy

3. **`aiops-root-cause-analysis.md`**
   - Design root cause analysis at scale
   - Covers graph-based methods, causal inference, correlation analysis
   - Trade-offs: automation vs accuracy, speed vs thoroughness

4. **`aiops-streaming-pipeline.md`**
   - Design real-time streaming pipeline for observability data
   - Covers Kafka, Flink, exactly-once semantics, scaling
   - Trade-offs: latency vs throughput, exactly-once vs at-least-once

5. **`aiops-concept-drift.md`**
   - Design system to handle concept drift in production ML models
   - Covers drift detection, retraining, online learning
   - Trade-offs: detection sensitivity, automation vs control

### Trade-off Articulation (`src/03_tradeoff-articulation/`)

Three AIOps-specific trade-off documents:

1. **`aiops-accuracy-vs-latency.md`**
   - Reasoning framework for balancing model accuracy and inference latency
   - Applies to anomaly detection, incident prediction, root cause analysis

2. **`aiops-false-positives-vs-false-negatives.md`**
   - Reasoning framework for balancing alert fatigue vs missed incidents
   - Covers confidence scoring, ensemble methods, signal fusion

3. **`aiops-real-time-vs-batch.md`**
   - Reasoning framework for choosing real-time vs batch processing
   - Covers Lambda, Kappa, and hybrid architectures

### Reference Materials (`src/resources/`)

1. **`aiops-reference.md`**
   - Comprehensive reference for AIOps concepts, tools, and best practices
   - Covers: anomaly detection, incident prediction, root cause analysis
   - Streaming frameworks, observability, MLOps, systems engineering
   - Evaluation metrics and common patterns

2. **`aiops-interview-preparation.md`**
   - Structured preparation guide linking all AIOps resources
   - Provides answer framework and practice checklist
   - Links to all relevant scenarios and trade-offs

## Structure Alignment

All files follow the repository's established patterns:

- **Scenarios** use: Context → Ambiguities → Clarifying Questions → Trade-offs Analysis → Structured Reasoning → Reflections
- **Trade-offs** use: Summary → When to Use → How to Apply → Key Considerations → Examples
- **Resources** provide: Purpose → Core Concepts → Tools → Patterns → Metrics

## Integration with Existing Content

The AIOps content integrates with existing repository frameworks:

- Uses `01_reasoning-foundations/problem-framing.md` for problem structuring
- Uses `02_answer-structuring/top-down-communication.md` for answer organization
- Uses `03_tradeoff-articulation/risk-and-failure-framing.md` for risk analysis
- Uses `04_role-perspectives/architect.md` for architect perspective

## Usage

1. **For Interview Preparation**: Start with `resources/aiops-interview-preparation.md`
2. **For Scenario Practice**: Work through each file in `05_evaluation-scenarios/aiops-*.md`
3. **For Trade-off Understanding**: Review files in `03_tradeoff-articulation/aiops-*.md`
4. **For Quick Reference**: Consult `resources/aiops-reference.md`

## Original Source

- **Preparation Guide**: `source-material/Architect_Interview_2_Preparation.md`
- **Quick Reference**: `source-material/Architect_Interview_2_Quick_Reference.md`
- **Job Requisition**: `source-material/Architect_Interview_2.md`

The original files remain in `source-material/` for reference, while the structured content is now available in `src/` for integration with the repository's reasoning frameworks.

