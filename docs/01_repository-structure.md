# Repository Structure

**Version**: 2.0  
**Last Updated**: December 24, 2025  
**Purpose**: Single source of truth for repository structure

> **Note**: This document should be referenced from `.github/copilot-instructions.md`, `.cursor/rules/02_repository-structure.mdc`, `README.md`, and other documentation files. When the structure changes, update this file first, then update references.

---

## Complete Repository Structure

```text
architecture-reasoning-in-practice/
│
├── README.md
├── LICENSE
├── CONTRIBUTING.md
├── SECURITY.md
├── .gitignore
├── lychee.toml
│
├── src/
│   └── (content to be organized by architectural reasoning topics)
│
├── docs/
│   ├── 01_repository-structure.md (this file)
│   ├── images/
│   └── review-reports/
│       └── .gitkeep
│
└── source-material/
    └── README.md
```

---

## Key Structure Notes

### File Naming Conventions

- **Content Files**: Use descriptive names that clearly indicate the topic
- **Organization**: Content organized by architectural reasoning topics and practice areas
- **Structure**: Flexible organization based on learning needs and practice scenarios

### Content Organization

1. **Focus Areas**: Structured thinking, trade-off analysis, clear communication
2. **Practice Scenarios**: Real-world architectural problems and decision-making exercises
3. **Reference Materials**: Notes, examples, and resources to support learning
4. **All Content Under `src/`**: All learning materials and practice content organized under the `src/` directory

### Special Directories

- **`docs/`**: Additional documentation, images, and planning materials
- **`source-material/`**: Staging area for source content (git-ignored)
  - Raw source materials placed here before migration
  - Files are transformed and migrated to `src/` following content rules
  - Source files remain after migration (user deletes manually)

---

## Update Protocol

**When repository structure changes**:

1. ✅ **Update this file first** (`docs/01_repository-structure.md`)
2. ✅ **Update references** in:
   - `.github/copilot-instructions.md` - Reference this file
   - `.cursor/rules/02_repository-structure.mdc` - Reference this file
   - `README.md` - Reference this file
3. ✅ **Verify consistency** across all documentation

**Self-Check Question**: "Did I update `docs/01_repository-structure.md` first?" - If no, STOP and do it NOW.

---

## References

- **Repository Structure**: This file (`docs/01_repository-structure.md`)
- **Learning Path**: `README.md`
- **GitHub Copilot Instructions**: `.github/copilot-instructions.md`
