# One-Pass Migration Checklist (Authoritative)

This is the **final cleanup guide**. Follow it once. Do not revisit.

---

## A. Create the New Structure (Empty)

Create exactly this under `src/`:

```
01_orientation
02_thinking
03_communication
04_roles
05_evaluation
06_reference
07_notes
```

---

## B. Migration Mapping (Do This Once)

| Current Folder / File      | Action                                         |
| -------------------------- | ---------------------------------------------- |
| `01_reasoning-foundations` | Merge → `02_thinking/system-thinking`          |
| `03_tradeoff-articulation` | Merge → `02_thinking/tradeoffs`                |
| `02_answer-structuring`    | Merge → `03_communication/structured-answers`  |
| `03_answer-frameworks`     | Merge → `03_communication/decision-narratives` |
| `04_role-perspectives`     | Merge → `01_orientation/role-comparison.md`    |
| `06_role-preparation/*`    | Move → `04_roles/*`                            |
| `05_evaluation-scenarios`  | Split → `05_evaluation/system-design/*`        |
| `05_evaluation-practice`   | Merge → `05_evaluation/scenario-walkthroughs`  |
| `00_ROLE_INDEX.md`         | ❌ Delete                                       |
| `NAVIGATION_GUIDE.md`      | ❌ Delete                                       |
| Unsure / mixed             | `07_notes/`                                    |

---

## C. Final Cleanup Rules (Non-Negotiable)

1. **One concept = one folder**
2. **No role folders outside `04_roles`**
3. **No evaluation content outside `05_evaluation`**
4. **No navigation guides compensating for structure**
5. **If unsure → `07_notes`**

---

## D. Final Validation Test

Your structure is correct if:

* A new reader knows where to start in 60 seconds
* Architect vs Principal intent is obvious immediately
* You can prepare for a role without opening unrelated folders
* You no longer need a navigation guide

---

## Final Truth

You were not struggling with learning.

You were struggling with **architecture applied to architecture learning**.

Now the repo follows the same principles you are trying to master.

If you want, next we can:

* Refactor your **root `README.md`** to match this structure
* Create **scenario templates** for `05_evaluation`
* Freeze a **contribution rule-set** to prevent future drift

Say the word.
