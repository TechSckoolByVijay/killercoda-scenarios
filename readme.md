# linux-basics (Killercoda Scenario)

**Scenario name:** Linux Basics: 8 Essential Commands

Copy the following files into a folder named `linux-basics` in your Killercoda GitHub repository (branch `main`). After pushing, go to Killercoda Creator → Repository and click **Sync Now**.

---

## File: index.json

```json
{
  "title": "Linux Basics: 8 Essential Commands",
  "description": "Hands-on practice for beginners: pwd, ls, mkdir, cd, touch, cat, cp, mv, rm, ps. Flexible verification and final scoring.",
  "time": "15 minutes",
  "difficulty": "Beginner",
  "details": {
    "steps": [
      {"title": "Step 1 — pwd", "text": "step1.md", "verify": "verify/verify1.sh"},
      {"title": "Step 2 — ls", "text": "step2.md", "verify": "verify/verify2.sh"},
      {"title": "Step 3 — mkdir and cd", "text": "step3.md", "verify": "verify/verify3.sh"},
      {"title": "Step 4 — create source file", "text": "step4.md", "verify": "verify/verify4.sh"},
      {"title": "Step 5 — read file with cat", "text": "step5.md", "verify": "verify/verify5.sh"},
      {"title": "Step 6 — copy file (cp)", "text": "step6.md", "verify": "verify/verify6.sh"},
      {"title": "Step 7 — move/rename file (mv)", "text": "step7.md", "verify": "verify/verify7.sh"},
      {"title": "Step 8 — list processes (ps)", "text": "step8.md", "verify": "verify/verify8.sh"}
    ]
  }
}
```

---

## File: intro.md

```md
# Linux Basics — 8 Essential Commands

Welcome! This short lab helps beginners practice essential shell commands.

**What you'll practice**:
- `pwd`, `ls`, `mkdir`, `cd`, `touch`, `cat`, `cp`, `mv`, `rm`, `ps`

**Flow**: Manual Next navigation. Each step has a verification script. All steps count toward the final score.

Good luck — open the terminal on the right and begin.
```

---

## File: finish.md

```md
# Well done!

This lab tallied your score across 8 tasks.

If you see a low score, revisit steps where verification failed and retry.

**Suggested next topics**: `grep`, `head`, `tail`, shell redirection, basic piping (`|`).
```

---

## Steps (step1.md .. step8.md)

### step1.md
```md
# Step 1 — Show current directory (`pwd`)

Run the `pwd` command to display the current working directory.

**Task:** Type:

```
pwd
```

Click **Check** when you have run the command.
```

---

### step2.md
```md
# Step 2 — List files (`ls`)

Run the `ls` command to list files in the current directory. Variants like `ls -l` are accepted.

**Task:** Type:

```
ls
```

Click **Check** when done.
```

---

### step3.md
```md
# Step 3 — Create and enter a directory (`mkdir` + `cd`)

Create a directory named `mylab` and change into it.

**Tasks:**

```
mkdir mylab
cd mylab
```

Click **Check** when done.
```

---

### step4.md
```md
# Step 4 — Create a file and add content (`touch` + echo)

Inside `mylab`, create a file named `source.txt` and add the line `This is sample content`.

**Task:**

```
touch source.txt
echo "This is sample content" > source.txt
```

Click **Check** when done.
```

---

### step5.md
```md
# Step 5 — Read the file (`cat`)

Display the contents of `source.txt`.

**Task:**

```
cat source.txt
```

You should see the line: `This is sample content`

Click **Check** when done.
```

---

### step6.md
```md
# Step 6 — Copy the file (`cp`)

Copy `source.txt` to a new file named `copy.txt`.

**Task:**

```
cp source.txt copy.txt
```

Click **Check** when done.
```

---

### step7.md
```md
# Step 7 — Move / rename the copy (`mv`)

Rename `copy.txt` to `moved.txt`.

**Task:**

```
mv copy.txt moved.txt
```

Click **Check** when done.
```

---

### step8.md
```md
# Step 8 — List running processes (`ps`)

Run `ps` (e.g., `ps`, `ps -e`, or `ps aux`) to view running processes.

**Task:**

```
ps
```

Click **Check** when done.
```

---

## Verification scripts (verify/*.sh)

**Note:** Make these scripts executable before committing: `chmod +x verify/*.sh`.

### verify/verify1.sh
```bash
#!/bin/bash
# Verify: pwd run
set -e
if history | tail -n 200 | grep -E "\bpwd\b" >/dev/null 2>&1; then
  echo "done"
  exit 0
else
  echo "Please run: pwd"
  exit 1
fi
```

---

### verify/verify2.sh
```bash
#!/bin/bash
# Verify: ls run
set -e
if history | tail -n 200 | grep -E "\bls( |$)" >/dev/null 2>&1; then
  echo "done"
  exit 0
else
  echo "Please run: ls"
  exit 1
fi
```

---

### verify/verify3.sh
```bash
#!/bin/bash
# Verify: mkdir mylab and directory exists
set -e
H=$(history | tail -n 200)
if echo "$H" | grep -E "\bmkdir\s+mylab\b" >/dev/null 2>&1 && [ -d "mylab" ]; then
  echo "done"
  exit 0
else
  echo "Please create directory 'mylab' with: mkdir mylab"
  exit 1
fi
```

---

### verify/verify4.sh
```bash
#!/bin/bash
# Verify: touch source.txt and content written
set -e
H=$(history | tail -n 200)
if echo "$H" | grep -E "\btouch\s+source.txt\b" >/dev/null 2>&1 && [ -f "mylab/source.txt" -o -f "source.txt" ]; then
  echo "done"
  exit 0
else
  echo "Please create file source.txt inside 'mylab' and/or add content: touch source.txt && echo \"This is sample content\" > source.txt"
  exit 1
fi
```

---

### verify/verify5.sh
```bash
#!/bin/bash
# Verify: cat source.txt shows the text
set -e
# prefer mylab/source.txt if exists
FILE=""
if [ -f "mylab/source.txt" ]; then FILE="mylab/source.txt"; elif [ -f "source.txt" ]; then FILE="source.txt"; fi
if [ -z "$FILE" ]; then
  echo "source.txt not found. Ensure you created it in step 4."
  exit 1
fi
if history | tail -n 200 | grep -E "\bcat\s+$FILE\b|\bcat\s+source.txt\b" >/dev/null 2>&1 || grep -q "This is sample content" "$FILE"; then
  if grep -q "This is sample content" "$FILE"; then
    echo "done"
    exit 0
  else
    echo "Please run: cat $FILE and verify the content 'This is sample content'"
    exit 1
  fi
else
  echo "Please run: cat $FILE"
  exit 1
fi
```

---

### verify/verify6.sh
```bash
#!/bin/bash
# Verify: cp source.txt copy.txt
set -e
# locate source
if [ -f "mylab/source.txt" ]; then
  SRC="mylab/source.txt"
else
  SRC="source.txt"
fi
if history | tail -n 200 | grep -E "\bcp\s+$SRC\s+copy.txt\b|\bcp\s+source.txt\s+copy.txt\b" >/dev/null 2>&1 && [ -f "${SRC%/*}/copy.txt" -o -f "copy.txt" ]; then
  echo "done"
  exit 0
else
  # Also accept if copy created manually in same dir
  if [ -f "copy.txt" ]; then
    echo "done"
    exit 0
  fi
  echo "Please copy source.txt to copy.txt using: cp source.txt copy.txt"
  exit 1
fi
```

---

### verify/verify7.sh
```bash
#!/bin/bash
# Verify: mv copy.txt moved.txt
set -e
if history | tail -n 200 | grep -E "\bmv\s+copy.txt\s+moved.txt\b" >/dev/null 2>&1 && [ -f "moved.txt" ]; then
  echo "done"
  exit 0
else
  if [ -f "moved.txt" ]; then
    echo "done"
    exit 0
  fi
  echo "Please rename the copy: mv copy.txt moved.txt"
  exit 1
fi
```

---

### verify/verify8.sh
```bash
#!/bin/bash
# Verify: ps run
set -e
if history | tail -n 200 | grep -E "\bps( |$)" >/dev/null 2>&1 || ps >/dev/null 2>&1; then
  echo "done"
  exit 0
else
  echo "Please run: ps"
  exit 1
fi
```

---

## Final notes

1. Make the verify scripts executable before committing:

```bash
chmod +x verify/*.sh
```

2. Commit the `linux-basics` folder into your GitHub repo and push to the branch configured in Killercoda (e.g., `main`).

3. In Killercoda Creator → Scenarios, click **List your Scenarios** (or Sync Now). Your scenario should appear.

4. If a verification fails, the scripts print actionable advice. Because the lab uses **Manual Next**, students can proceed even if a step fails — the final score will reflect successes.

If you want, I can also:
- generate a `README.md` describing Git commands to push these files,
- or generate a Katacoda-style `assets` initializer to pre-create `mylab` and files automatically.

---

*End of scenario package.*

