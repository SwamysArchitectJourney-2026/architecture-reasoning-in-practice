# Glossary of Terms

**Purpose**: Definitions of key terms used throughout the repository to reduce cognitive load.

---

## Architecture Terms

### Architectural Decision
A choice made about the structure, behavior, or design of a system that affects multiple components or teams. Architectural decisions have long-term implications and are difficult to reverse.

### Non-Functional Requirement (NFR)
Requirements that describe how a system should behave, rather than what it should do. Examples: performance, scalability, security, reliability, maintainability, availability.

### Quality Attribute
A measurable property of a system that indicates how well it meets non-functional requirements. Common quality attributes include:
- **Performance**: Response time, throughput
- **Scalability**: Ability to handle increased load
- **Reliability**: Uptime, fault tolerance
- **Security**: Authentication, authorization, encryption
- **Maintainability**: Ease of modification and extension

### System Boundary
The conceptual line that separates a system from its environment, defining what is inside the system and what is outside (external dependencies, users, other systems).

### Bounded Context
A boundary within which a particular domain model is valid and consistent. Used in Domain-Driven Design (DDD) to define service boundaries in microservices.

---

## Design Patterns & Approaches

### CQRS (Command Query Responsibility Segregation)
A pattern that separates read operations (queries) from write operations (commands), using different models for each. Used when read and write patterns diverge significantly.

**When to use**: High read/write contention, complex queries, different scalability needs

**Trade-off**: Increased complexity vs better scalability

### Event-Driven Architecture
An architectural pattern where components communicate through events (messages) rather than direct calls. Components are loosely coupled and react to events.

### Microservices
An architectural approach where a system is built as a collection of small, independent services that communicate over well-defined APIs.

**Trade-offs**:
- Pros: Independent deployment, technology diversity, team autonomy
- Cons: Operational complexity, distributed system challenges, network latency

### Polyglot Persistence
Using multiple database technologies in a single system, choosing the best database for each use case based on data access patterns.

**Example**: SQL Server for transactional consistency, MongoDB for document storage, Redis for caching

### Saga Pattern
A pattern for managing distributed transactions across multiple services. Instead of distributed transactions, use a sequence of local transactions with compensating actions.

---

## Reasoning & Decision-Making

### Trade-off Analysis
The process of evaluating the pros and cons of different options, understanding what you gain and what you sacrifice with each choice.

**Key principle**: Every architectural decision involves trade-offs. There is no perfect solution, only appropriate solutions for specific contexts.

### Problem Framing
The process of restating a problem clearly, identifying stakeholders, constraints, and separating facts from assumptions before proposing solutions.

### Top-Down Communication
A communication approach that starts with high-level concepts and goes deeper only if needed. Helps manage complexity and respect time constraints.

### Depth Control
The ability to adjust the level of detail in explanations based on audience needs and time constraints. Start high-level, go deeper only when asked.

### Risk and Failure Framing
Describing risks in terms of failure modes, their likelihood, impact, and mitigation strategies. Helps stakeholders understand and accept risks.

---

## AIOps Terms

### Anomaly Detection
Identifying unusual patterns in operational data (metrics, logs, traces) that may indicate incidents or problems.

**Approaches**:
- Statistical methods (Z-score, IQR)
- Unsupervised ML (Isolation Forest, Autoencoders)
- Supervised ML (XGBoost, Random Forest)

### Concept Drift
When the statistical properties of the data that a model is trained on change over time, causing model performance to degrade.

**Detection**: PSI (Population Stability Index), KS test (Kolmogorov-Smirnov)

### Root Cause Analysis (RCA)
The process of identifying the underlying cause of an incident or problem, rather than just addressing symptoms.

**Approaches**: Graph-based methods, causal inference, correlation analysis

### Observability
The ability to understand a system's internal state from its external outputs. Built on three pillars:
- **Metrics**: Aggregated numerical data over time
- **Logs**: Discrete events with timestamps
- **Traces**: Request flows across services

### MLOps
Practices for deploying, monitoring, and maintaining ML models in production. Includes feature stores, model versioning, drift detection, and automated retraining.

---

## System Design Terms

### Scalability
The ability of a system to handle increased load by adding resources (horizontal scaling) or upgrading resources (vertical scaling).

### Availability
The percentage of time a system is operational and accessible. Often measured as "nines" (99.9% = three nines).

### Consistency Models
- **Strong Consistency**: All reads see the latest write
- **Eventual Consistency**: System will become consistent over time
- **Weak Consistency**: No guarantees about when consistency is achieved

### CAP Theorem
States that in a distributed system, you can only guarantee two of three properties:
- **Consistency**: All nodes see the same data
- **Availability**: System remains operational
- **Partition Tolerance**: System continues despite network failures

### Load Balancing
Distributing incoming requests across multiple servers to improve performance and availability.

### Caching
Storing frequently accessed data in fast storage (memory) to reduce latency and load on primary data stores.

**Strategies**: Cache-aside, write-through, write-behind

---

## Role-Specific Terms

### Technical Debt
The implied cost of additional rework caused by choosing a quick solution over a better approach that would take longer.

### Code Review
The process of examining code changes to ensure quality, catch bugs, share knowledge, and maintain standards.

### Design Review
The process of evaluating system designs before implementation to identify issues, validate approaches, and ensure alignment with requirements.

### Mentorship
Guiding and supporting less experienced engineers to help them grow technically and professionally.

### Technical Leadership
Influencing technical decisions and direction without formal authority, through expertise, communication, and collaboration.

---

## Evaluation Terms

### Evaluation Scenario
A practice problem that simulates real-world architectural challenges, with context, ambiguities, and expected reasoning approaches.

### Clarifying Questions
Questions asked to understand requirements, constraints, and context before proposing solutions. Essential for handling ambiguous problems.

### Structured Reasoning
A systematic approach to problem-solving that includes: problem framing, identifying options, analyzing trade-offs, and proposing solutions.

### Time-Boxed Reasoning
Working within time constraints, spending early minutes on clarification, quickly proposing options, and making decisions with identified risks.

---

## Common Abbreviations

- **API**: Application Programming Interface
- **DDD**: Domain-Driven Design
- **CQRS**: Command Query Responsibility Segregation
- **NFR**: Non-Functional Requirement
- **RCA**: Root Cause Analysis
- **MTTR**: Mean Time To Recovery
- **SLA**: Service Level Agreement
- **SLO**: Service Level Objective
- **SLI**: Service Level Indicator
- **AIOps**: AI for IT Operations
- **MLOps**: Machine Learning Operations
- **APM**: Application Performance Monitoring
- **CI/CD**: Continuous Integration / Continuous Deployment

---

## How to Use This Glossary

1. **When reading scenarios** - Look up unfamiliar terms
2. **When preparing** - Review terms for your target role
3. **When practicing** - Use correct terminology in your answers
4. **When interviewing** - Demonstrate understanding of key terms

---

**Related Resources**:
- Role-specific preparation: `06_role-preparation/`
- Role skills matrix: `docs/role-skills-matrix.md`
- Master index: `00_ROLE_INDEX.md`

