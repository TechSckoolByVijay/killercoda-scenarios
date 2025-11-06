Create a KillerCoda scenario pack named linux-assessments-suite that demonstrates:

Multiple-choice quizzes inside steps

Practical command verification via verify.sh scripts

Randomized lab setup on start (init.sh)

Hints (collapsible details)

Terminal-only final exam with verification

Use Katacoda/KillerCoda layout. Minimal UI: single terminal. Ubuntu base. Idempotent scripts. Clear, beginner-friendly text.

Repository layout (create exactly):

linux-assessments-suite/
├─ index.json
├─ intro.md
├─ step1_quiz.md
├─ step2_practical.md
├─ step3_randomized.md
├─ step4_final_exam.md
├─ finish.md
├─ assets/
│  └─ sample-data.txt
└─ scripts/
   ├─ init.sh
   ├─ foreground.sh
   └─ verify/
      ├─ step2-verify.sh
      ├─ step3-verify.sh
      └─ final-verify.sh


index.json (wire steps, assets, verify scripts)

{
  "title": "Linux Assessments Suite",
  "description": "Quizzes, practical checks, randomized labs, and a terminal-only final exam.",
  "difficulty": "beginner",
  "time": "20 minutes",
  "backend": { "imageid": "ubuntu:latest" },
  "environment": { "uilayout": "terminal" },
  "details": {
    "steps": [
      { "title": "MCQ Quiz Basics", "text": "step1_quiz.md" },
      { "title": "Practical: ls/pwd/cd", "text": "step2_practical.md", "verify": "scripts/verify/step2-verify.sh" },
      { "title": "Randomized Lab Task", "text": "step3_randomized.md", "verify": "scripts/verify/step3-verify.sh" },
      { "title": "Terminal-Only Final Exam", "text": "step4_final_exam.md", "verify": "scripts/verify/final-verify.sh" }
    ],
    "assets": {
      "host01": [
        { "file": "assets/sample-data.txt", "target": "/opt/assets/sample-data.txt" }
      ]
    }
  },
  "intro": { "text": "intro.md" },
  "finish": { "text": "finish.md" }
}


scripts/init.sh (runs automatically; prepare deterministic + randomized content)

#!/bin/bash
set -euo pipefail

# Base demo structure
DEMO="$HOME/demo"
mkdir -p "$DEMO/reports" "$DEMO/projects"
printf "alpha\n" > "$DEMO/alpha.txt"
printf "beta\n"  > "$DEMO/beta.log"
printf "This is report1\n" > "$DEMO/reports/report1.txt"
touch -d "2025-10-01 10:00:00" "$DEMO/alpha.txt"
touch -d "2025-10-02 12:30:00" "$DEMO/beta.log"
touch -d "2025-10-03 09:15:00" "$DEMO/reports/report1.txt"

# Copy asset
mkdir -p /opt/assets
cp -f /opt/assets/sample-data.txt "$DEMO/projects/sample-data.txt" || true

# Randomized lab seed (stable within a run)
SEED_FILE="/tmp/lab-seed"
if [[ ! -f "$SEED_FILE" ]]; then
  awk 'BEGIN{srand(); print int(rand()*9000)+1000}' > "$SEED_FILE"
fi
SEED="$(cat "$SEED_FILE")"

# Create randomized files using the seed
RANDDIR="$HOME/lab_$SEED"
mkdir -p "$RANDDIR/subA" "$RANDDIR/subB"
echo "seed=$SEED" > "$RANDDIR/info.txt"
printf "one\n" > "$RANDDIR/subA/file_${SEED}_a.txt"
printf "two\n" > "$RANDDIR/subB/file_${SEED}_b.log"
# Stagger timestamps
touch -d "2025-09-30 09:00:00" "$RANDDIR/subA/file_${SEED}_a.txt"
touch -d "2025-10-04 15:45:00" "$RANDDIR/subB/file_${SEED}_b.log"


scripts/foreground.sh (launch terminal with a friendly banner; idempotent)

#!/bin/bash
set -euo pipefail
# Ensure init ran (idempotent patterns above make it safe)
bash /usr/local/bin/entrypoint.sh 2>/dev/null || true
[[ -x /opt/killercoda/env-init ]] && /opt/killercoda/env-init || true
[[ -x /usr/local/bin/init.sh ]] && /usr/local/bin/init.sh || true
[[ -x /root/scripts/init.sh ]] && /root/scripts/init.sh || true
[[ -x "$(dirname "$0")/init.sh" ]] && "$(dirname "$0")/init.sh" || true

clear
echo "✅ Environment ready."
echo "Try: whoami, pwd, cd ~/demo, ls -l, ls -lt, ls -ltr"
echo "Randomized lab directory: ~/lab_\$(cat /tmp/lab-seed 2>/dev/null || echo '????')"
echo
exec bash


assets/sample-data.txt

sample,line,of,data


intro.md

# Linux Assessments Suite

You’ll experience:
- **Multiple-choice quizzes**
- **Practical verifications** (state-based checks)
- **Randomized lab** (unique per run)
- **Terminal-only final exam**

Files are created automatically in `~/demo` and a seeded random lab in `~/lab_<seed>`.


step1_quiz.md (built-in multiple choice)

## Step 1 — MCQ Quiz Basics

**Quiz 1**

{quiz}
question: Which command lists files with permissions, owner, size, and timestamp?
options:
  - ls
  - ls -l
  - whoami
answer: ls -l
{/quiz}

**Quiz 2**

{quiz}
question: Which flag sorts by modification time (newest first) with ls?
options:
  - -a
  - -t
  - -r
answer: -t
{/quiz}

<details>
<summary>Hint</summary>

- `ls -lt` sorts by time, newest first  
- `ls -ltr` sorts oldest first (reverse)

</details>


step2_practical.md (practical task; verifiable state)

## Step 2 — Practical: Navigate & List

From a Unix terminal:

1. Go to the demo folder:
   ```bash
   cd ~/demo


Show long listing:

ls -l


Sort by modified time (newest first):

ls -lt


Create a file named .completed_step2 inside ~/demo to mark completion:

touch ~/.completed_step2

<details> <summary>Hint</summary> Use `pwd` to confirm your current directory, then combine `ls` flags like `-l`, `-t`, `-r`, `-h`. </details> ```

scripts/verify/step2-verify.sh (check observable artifacts, not shell history)

#!/bin/bash
set -euo pipefail
# Success criteria: marker file exists in HOME
[[ -f "$HOME/.completed_step2" ]]


step3_randomized.md (randomized lab task)

## Step 3 — Randomized Lab Task

A unique lab was created at: `~/lab_<seed>`

**Your task**
1. Find the directory starting with `lab_` in your home.
2. Inside it, locate files in `subA` and `subB`.
3. Copy the **newest** file among those two into `~/demo/projects/selected.log`.
4. Then mark completion:
   ```bash
   echo "done" > ~/.completed_step3

<details> <summary>Hint</summary> Compare timestamps with `ls -lt` in `subA` and `subB`. Use `cp` to place the newest file at the target path. </details> ```

scripts/verify/step3-verify.sh (validate result)

#!/bin/bash
set -euo pipefail
[[ -f "$HOME/.completed_step3" ]]
[[ -f "$HOME/demo/projects/selected.log" ]]


step4_final_exam.md (terminal-only exam; no extra UI)

## Step 4 — Terminal-Only Final Exam

**Goal (no additional guidance):**

1. Create a directory `~/projectX`
2. Create `~/projectX/notes.txt`
3. Put the word `done` into that file (exact match, lowercase)
4. Create a completion marker:
   ```bash
   touch ~/.final_ready


**scripts/verify/final-verify.sh** (exam verification)
```bash
#!/bin/bash
set -euo pipefail
[[ -d "$HOME/projectX" ]]
[[ -f "$HOME/projectX/notes.txt" ]]
grep -qx "done" "$HOME/projectX/notes.txt"
[[ -f "$HOME/.final_ready" ]]


finish.md

# Great Job!

You tried:
- MCQ quizzes in-step
- Practical, state-based verification
- Randomized environments
- A terminal-only final exam

Explore variations:
- Add more MCQs
- Chain complex verification
- Generate larger randomized trees in `init.sh`


Notes for Copilot

Ensure all scripts are executable in your docs or Makefile:

chmod +x scripts/*.sh scripts/verify/*.sh


init.sh should execute on scenario start (KillerCoda auto-runs init if placed/registered appropriately; include it in the image or call from foreground).

All verification scripts must exit 0 on success, non-zero otherwise.

Keep tasks verifiable via filesystem state, not shell history.

Use $HOME for portable paths; no root-required actions.