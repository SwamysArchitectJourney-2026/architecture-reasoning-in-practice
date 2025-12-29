# Meetup Session 04: Configuring Code Scanning on GitHub

* **Organization**: AI Minds: The Hub for AI Intellectuals  
* **Event URL**: *(To be published)*  
* **Date**: *(TBD)*  
* **Duration**: 33 minutes  
* **Type**: Conceptual walkthrough + guided configuration exercise  
* **Deliverable**: Code scanning enabled repository + security alerts review checklist

---

## Why This Session

Modern software development requires **security to be built into the development workflow**, not added at the end. GitHub provides **code scanning** to automatically analyze source code and detect security vulnerabilities and coding errors early in the development lifecycle.

Many developers and teams struggle with:

* Not understanding what code scanning actually does
* Confusing code scanning with dependency scanning or secret scanning
* Being unsure when and how code scanning runs
* Avoiding security tooling due to perceived complexity
* Treating security as a separate team concern instead of a developer responsibility

This session demystifies **code scanning**, explains how it works conceptually, and walks through enabling it using GitHub-native and third-party approaches.

---

## Agenda

### 1. Introduction to Code Scanning

* Why application security matters in modern development
* Shift-left security: catching issues early
* Overview of GitHub Advanced Security features
* Where code scanning fits in the secure development lifecycle

---

### 2. What Is Code Scanning?

* Static code analysis explained in simple terms
* How code scanning analyzes source code
* Types of issues detected:
  * Security vulnerabilities
  * Code quality issues
  * Unsafe coding patterns
* Difference between:
  * Code scanning
  * Dependency scanning
  * Secret scanning

**Key Mental Model**:

* Code scanning = analyze *your code* for known risky patterns
* Dependency scanning = analyze *libraries you use*
* Secret scanning = detect *exposed credentials*

---

### 3. Enable Code Scanning with Third-Party Tools

* Overview of third-party security tools supported by GitHub
* How third-party tools integrate via GitHub Actions
* When teams choose third-party tools over native scanning
* Trade-offs: coverage, customization, and maintenance

---

### 4. Configure Code Scanning (Conceptual)

* Enabling code scanning at the repository level
* Using GitHub Actions to automate scanning
* Understanding scan triggers:
  * On push
  * On pull request
  * On schedule
* Where scan results appear in the GitHub UI
* Understanding alerts and severity levels

**Exam Focus**: This section tests *understanding and awareness*, not deep configuration syntax.

---

### 5. Configure Code Scanning – Guided Exercise

* Enable code scanning in a sample repository
* Use a starter workflow to activate scanning
* Trigger a scan via commit or pull request
* Navigate to:
  * Security tab
  * Code scanning alerts
* Review detected issues and their metadata

**Exercise Outcome**:

* Code scanning successfully enabled
* At least one scan executed
* Alerts visible in the Security tab

---

### 6. Module Self-Assessment

* Can you explain what code scanning does in simple terms?
* Can you distinguish code scanning from dependency scanning?
* Can you explain how code scanning is triggered?
* Can you identify where code scanning results appear?
* Can you explain why code scanning is important for teams?

---

### 7. Summary

* Code scanning helps detect vulnerabilities early
* GitHub integrates security directly into developer workflows
* Scanning can be automated using GitHub Actions
* Results are visible, actionable, and auditable
* Developers play a key role in application security

**Deliverable**: A repository with **code scanning enabled** and a **security review checklist**

---

## Who Should Attend

* Developers new to application security
* Professionals preparing for GitHub Foundations Certification
* Team leads interested in secure development practices
* Anyone responsible for code quality and security awareness

---

## Related Content

**Learning Session**: [`04_configure-code-scanning/`](../sessions/04_configure-code-scanning/) (Planned)  
**Master Plan**: [`../02_master-plan.md`](../02_master-plan.md) - Session 04  
**Session Overview**: [`../03_session-overview.md`](../03_session-overview.md) - Session 04

---

**Session Status**: Planned ⏳

