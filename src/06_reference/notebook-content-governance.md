# Notebook Content Governance

## Purpose

Quick policy reference for publishing notebooks in learning repositories without introducing licensing or provenance risk.

## Core Rules

- Do not embed copyrighted third-party images in committed notebooks.
- Prefer links to original sources when attribution is required.
- Prefer self-created diagrams when visual explanation is needed.
- Prefer generated charts/plots when visuals can be derived from your own code and data.

## Why This Matters

Notebook files can store embedded media directly in JSON outputs.
Committing the notebook may therefore redistribute the media asset.

## Safe Patterns

### Pattern 1: Link to Original Source

Use when the visual is not essential to repository independence.

### Pattern 2: Recreate the Diagram

Use when the visual is central to understanding and you can redraw from first principles.

### Pattern 3: Generate Visuals from Code

Use when plots/graphs can be reproduced from your own scripts and datasets.

## Risk Checklist Before Commit

- Does this notebook contain pasted images from external books/articles/slides?
- Are there large output blobs that include image payloads?
- Is every included visual either original, generated, or explicitly licensed?
- Can a reviewer trace provenance for each non-trivial figure?

## Recommended Repository Layout

- keep notebooks for exploration
- keep reusable visuals in a dedicated docs/diagrams style folder
- keep source scripts and data-generation logic versioned alongside content

## One-Line Policy

If you did not create or license the visual, do not embed it in a committed notebook.
