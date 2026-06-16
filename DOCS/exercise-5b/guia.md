# Exercise 5b — Guia (CPAN133)

Run everything on the **Humber Linux lab terminal**. Take a screenshot after each section for `exercise 5b Matheus Maggiorini.docx`.

## Setup — new directory

```bash
cd ~
mkdir -p CPAN133Assignments/Exercise5b
cd CPAN133Assignments/Exercise5b
pwd
```

Expected: something like `/home/students/n10008228/CPAN133Assignments/Exercise5b`

---

## 1. find — locate `file1` under `/home`

```bash
find /home -name file1
```

**Written answers (English):**
- List every **directory path** where `file1` appears (from your output).
- Other users’ home dirs: usually **no** — you get “Permission denied” unless those directories are world-readable. You can only reliably see `file1` in paths your user can read.

If `find` returns nothing, you may need `file1` from an earlier lab. Ask the professor or check:

```bash
find ~ -name file1
ls -l ~/file1 2>/dev/null
```

---

## 2. sort — `corp_phones1` and `corp_phones2`

These files should exist from **earlier exercises**. From your Exercise5b folder:

```bash
ls -l corp_phones1 corp_phones2
```

If they are in another folder, copy them here:

```bash
cp /path/from/earlier/lab/corp_phones1 .
cp /path/from/earlier/lab/corp_phones2 .
```

If you must recreate them (confirm format with your notes), see `setup_corp_phones.sh` in this folder.

Run each command and screenshot the output:

```bash
sort -t: -k 4 corp_phones1
sort -t: -k 5 corp_phones1
sort -k 4 corp_phones2
sort -k 5 corp_phones2
clear
sort -t: -k 5 -o sorted_phones corp_phones1
```

**Question: What is the output of the last command?**

The last command writes to a file — **no lines on screen**. Show that with:

```bash
cat sorted_phones
```

Screenshot `cat sorted_phones` — that is the sorted result (by field 5, colon-separated).

---

## 3. cd — `.` and `..`

```bash
cd ~
pwd
cd .
pwd
cd ..
pwd
cd ..
pwd
```

**Written answers:**
- `cd .` — current directory; **pwd stays the same**.
- First `cd ..` — moves to **parent** (e.g. `/home/students` from your home).
- Second `cd ..` — moves up again (e.g. `/home`).

Use **your** `pwd` output in the Word doc.

---

## 4. who — logged-in users

Still in Exercise5b (or home — either is fine):

```bash
who > current_users
cat current_users
```

Screenshot both commands. The file lists users logged in on the system.

---

## Checklist before submit

- [ ] Section 1: `find` output + written answers
- [ ] Section 2: all five `sort` commands + `cat sorted_phones`
- [ ] Section 3: four `pwd` results + short answers for `cd .` / `cd ..`
- [ ] Section 4: `who > current_users` and `cat current_users`
- [ ] Word file: `DOCS/exercise 5b Matheus Maggiorini.docx`
