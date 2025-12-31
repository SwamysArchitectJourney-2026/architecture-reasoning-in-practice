# Manual Cleanup Script

**Status**: Index files deleted ✅, folders need manual deletion

The terminal had issues with PowerShell, so please run these commands manually to delete the old folders.

---

## ✅ Already Deleted

- ✅ `src/00_ROLE_INDEX.md`
- ✅ `src/NAVIGATION_GUIDE.md`

---

## 🗑️ Folders to Delete Manually

Run these PowerShell commands from the `src/` directory:

```powershell
cd "D:\SAJ-2026\architecture-reasoning-in-practice\src"

# Old thinking/communication folders
Remove-Item -Recurse -Force "01_reasoning-foundations"
Remove-Item -Recurse -Force "02_thinking-toolkit"
Remove-Item -Recurse -Force "03_tradeoff-articulation"
Remove-Item -Recurse -Force "02_answer-structuring"
Remove-Item -Recurse -Force "03_answer-frameworks"

# Old evaluation folders
Remove-Item -Recurse -Force "05_evaluation-scenarios"
Remove-Item -Recurse -Force "05_evaluation-practice"

# Old role folders
Remove-Item -Recurse -Force "04_role-paths"
Remove-Item -Recurse -Force "04_role-perspectives"
Remove-Item -Recurse -Force "06_role-preparation"

# Old reference folders
Remove-Item -Recurse -Force "docs"
Remove-Item -Recurse -Force "resources"
```

---

## ✅ Verification

After deletion, your `src/` folder should only contain:

```
src/
├── 01_orientation/
├── 02_thinking/
├── 03_communication/
├── 04_roles/
├── 05_evaluation/
├── 06_reference/
└── 07_notes/
```

---

## 🎯 Status

- ✅ **Content migrated**: All files moved to new structure
- ✅ **Index files deleted**: `00_ROLE_INDEX.md`, `NAVIGATION_GUIDE.md`
- ⚠️ **Folders pending**: Need manual deletion (PowerShell issue)

**After manual deletion, migration will be 100% complete.**

