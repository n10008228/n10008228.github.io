# Operating Systems — Humber College (CPAN133)

## Purpose

Course workspace for CPAN133 Operating Systems labs and assignments on **Linux** (command line, permissions, filesystem, GNU/Linux concepts). **All lesson creation and analysis goes in [`DOCS/`](./DOCS/)** — enunciados, guides, checklists, lab files, and submission drafts.

## Ownership

- Student: Matheus Maggiorini (#288)
- Linux home path used in assignments: `/home/students/n10008228/`
- Git identity: `Matheus Maggiorini` / `n10008228@humber.ca`
- Parent: [../AGENTS.md](../AGENTS.md)
- This folder is a **separate git repository** (remote: `matheus-repo` → `n10008228/n10008228.github.io`) — git operations here are independent from the HUMBER root

## Local Contracts

- **Create and analyze every OS lesson inside `DOCS/`** — do not add new lesson files to the repo root
- Follow the professor's enunciado exactly; match question numbering (Part 1, Part 2, Exercise 1, etc.)
- Work runs on **Linux terminal** — not PowerShell or Windows paths unless the assignment says otherwise
- Assignment deliverables are usually **Word documents** (`.docx`) with answers and/or terminal screenshots
- Filename pattern when identification is required: `exercise N Matheus Maggiorini.docx`, `assignment N Matheus Maggiorini.docx`, or `matheus exercise N.docx`
- Branches in use: `master`, `matheus-branch`, `andre-branch` — coordinate with group members on shared work
- Do not force-push or rewrite history unless Matheus explicitly asks

## Work Guidance

**Course context (from past work)**
- GNU/Linux: Linux is the kernel; GNU provides tools/libraries — refer to **GNU/Linux** when explaining the full OS
- Shell passes commands to the kernel; Linux is primarily written in **C**
- Standard assignment path layout: `~/CPAN133Assignments/AssignmentN/` (e.g. `Assignment1/a1file.txt`)

**Answer style (written exercises)**
- English for formal assignment answers (Assignment 1 pattern)
- Numbered answers aligned to the question list
- Short opening definition, then 2–4 clear sentences explaining *why*
- Cite authoritative sources when asked “where did you find this?” — use URLs such as [FHS](https://refspecs.linuxfoundation.org/FHS_3.0/fhs/ch03s06.html), [man7.org](https://man7.org/linux/man-pages/)
- Practical comparisons for command labs: contrast behavior (e.g. `ls` vs `ls -l`; `mv` rename vs move into existing directory)

**Terminal / screenshot labs (Exercise 1 pattern)**
- Include screenshots of commands and output in the Word doc
- Commands Matheus has used: `date`, `cal`, `who`, `whoami`, `clear`, `whatis`, `man`, `echo $SHELL`
- Document shortcuts when relevant (e.g. `date ; cal`, `exit`)

**Permissions (Exercise 4 pattern)**
- Give both symbolic and octal when applicable: `rwxr-xr-x` → `755`, `rw-r--r--` → `644`, etc.
- Show working for owner/group/other bits; octal must match symbolic notation

**Path questions**
- Distinguish **absolute** (`/home/students/.../file`) vs **relative** (`CPAN133Assignments/Assignment1/file`) from home directory

## Verification

- Re-read each question and confirm the answer addresses *all* parts (explain why, cite references, show path type)
- For terminal labs: every required command appears with visible output in screenshots
- For permissions: verify octal arithmetic (r=4, w=2, x=1) matches symbolic string
- For `cd` / path questions: confirm target is a directory, not an executable file
- Spell-check and keep numbering consistent before submission

## Reference artifacts

Past submissions and enunciados belong under `DOCS/` (move or add there as exercises are organized). See [DOCS/AGENTS.md](./DOCS/AGENTS.md) for per-exercise folders.

## Child DOX Index

| Path | Scope |
|------|-------|
| [DOCS/AGENTS.md](./DOCS/AGENTS.md) | All OS lessons — enunciados, guides, analysis, lab files, drafts |
