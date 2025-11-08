# Learn scenario syntax from linux-cli-warmup, already present in current repo.

# Objective:
Create a KillerKoda interactive scenario titled:
s01l03-practical-linux-pipes-grep-sed-smart-workflows

# Target Audience:
Beginners to intermediate Linux/DevOps learners who just learned file operations and permissions, now leveling up to pipelines and text processing.

# Scenario Theme / UX Goal:
This should feel hands-on, fast-feedback, and practical for real logs/configs.
Each step is short, friendly, under 120 words, and ends with a tiny challenge + validation.
Teach by doing; minimal theory; celebrate quick wins.

# Environment:
- Single Ubuntu/Alpine container.
- Preload sample data (no new commands required to generate data):
  - Place sample logs in /workspace/logs/:
    - app.log, access.log, system.log (mix of INFO/WARN/ERROR, IPs, timestamps)
  - Place sample text in /workspace/data/:
    - users.txt (colon/dash/comma delimited), services.txt
- Ensure learners have read/write to /workspace.

# Allowed Commands Only (do NOT introduce others):
- Chaining: ;  &&  ||
- Pipes: |
- grep with common flags: grep, grep -i, grep -n, grep -r, grep -E "<A|B>"
- cut with delimiter/fields: cut -d '<char>' -f <n[,m]>
- sort, uniq, uniq -c
- wc -l, wc -w, wc -c
- sed 's/old/new/' and 's/old/new/g'
- cat (for viewing only)
(No find, awk, xargs, tee, head, tail, tr, etc.)

# Scenario Layout:
- steps/step1.md ... step9.md
- Each step must include:
  * 1–2 sentence explainer
  * "Try this now" code block (ONLY allowed commands)
  * Expected outcome (plain language)
  * Mini task for learner
  * Simple validation check (command they can run to confirm)

# Step Flow:

## Step 1: Primer — The Pipeline Mindset
Explain pipes briefly. Show cat logs/app.log | grep ERROR.
Try this now: basic pipe.
Validation: wc -l on filtered output > 0.

## Step 2: Command Chaining ; && ||
Show cmd1 ; cmd2, cmd1 && cmd2, cmd1 || cmd2 using harmless echoes and cat on existing files.
Mini task: chain a success path and a failure fallback.
Validation: Explain expected printed lines order.

## Step 3: grep Basics
grep "ERROR" logs/app.log
grep -i "warning" logs/app.log
grep -n "timeout" logs/system.log
Mini task: find case-insensitive "failed" with line numbers.
Validation: Output contains ":<number>:" patterns.

## Step 4: grep Advanced (recursive + alternation)
grep -r "ERROR" logs/
grep -E "WARN|ERROR" logs/app.log
Mini task: recursively find "denied" in logs/.
Validation: wc -l of matches >= 1.

## Step 5: cut Columns
Show cut -d ' ' -f 1 access.log to extract IPs (assume space-delimited).
Try variant with colon/comma on /workspace/data/users.txt.
Mini task: extract first field only.
Validation: sort | uniq -c shows multiple groups.

## Step 6: sort + uniq for Frequency
Pipeline: cat access.log | cut -d ' ' -f 1 | sort | uniq -c | sort -nr
Explain uniq requires sorted input.
Mini task: top 3 IPs.
Validation: first line count is the highest.

## Step 7: wc for Counts
wc -l on ERROR-filtered lines.
wc -w and wc -c quick demo on a small text file.
Mini task: how many WARN lines exist across all logs? (grep -r -i).
Validation: number > 0.

## Step 8: sed Transformations
Show sed 's/ERROR/ERR/' app.log (stream only, do not write file).
Then global: sed 's/  */ /g' to normalize spaces on a sample line.
Mini task: replace "WARN" with "WARNING" in a stream.
Validation: grep -E "WARNING" appears in transformed output.

## Step 9: Real-World Pipeline Challenge
Goal: Rank most frequent error messages.
Hint:
cat logs/app.log \
| grep -i "error" \
| cut -d ' ' -f 5- \
| sort \
| uniq -c \
| sort -nr
Mini task: produce top 5; then same for WARN.
Validation: counts appear descending; top entry shows a number > 1.

# Style Requirements:
- Friendly, mentor tone with light humor.
- Keep steps under 120 words.
- Each step ends with:
  - "Try this now" block (only allowed commands)
  - "If it worked, you should see…" note
  - A validation command the learner can run

# Output Files to Generate:
1) scenario.yml
   - Title: "Pipes, Grep, and Sed — Smart Workflows"
   - Description: Short, upbeat summary.
   - Environment: single container with /workspace pre-seeded.
   - OnStart: copy assets into /workspace.
2) index.json
   - Name, difficulty: "beginner", estimatedTime: "15-25 min"
   - Steps array referencing steps/*.md
3) steps/step1.md ... steps/step9.md
   - Follow content plan above.

# Notes:
- Do not use or mention commands beyond the allowed list.
- Do not require sudo.
- Ensure all code blocks are runnable as-is in the environment.
- Keep outputs deterministic using provided sample files.
