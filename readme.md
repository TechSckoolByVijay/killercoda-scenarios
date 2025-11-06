
**Prompt for GitHub Copilot:**

> Create a KillerCoda scenario repo named **linux-cli-warmup**. It must:
>
> * Open with a **single Unix terminal** (no editor panes).
> * **Pre-create files automatically on scenario start** so the learner immediately sees them.
> * Use simple steps that practice `pwd`, `whoami`, `cd`, `ls -l`, `ls -lh`, `ls -ltr`, `ls -lt`.
> * Keep everything minimal and beginner-friendly.
>
> Use the **Katacoda/KillerCoda** layout and scripts:
>
> **Files & contents (write them exactly):**
>
> ```text
> linux-cli-warmup/
> ├─ index.json
> ├─ intro.md
> ├─ step1.md
> ├─ step2.md
> ├─ finish.md
> ├─ assets/
> │  └─ create-files.sh
> └─ scripts/
>    ├─ init.sh
>    └─ foreground.sh
> ```
>
> **index.json**
>
> ```json
> {
>   "title": "Linux CLI Warmup",
>   "description": "Practice pwd, whoami, cd, and ls sorting by modified time.",
>   "difficulty": "beginner",
>   "time": "10 minutes",
>   "backend": { "imageid": "ubuntu:latest" },
>   "environment": { "uilayout": "terminal" },
>   "details": {
>     "steps": [
>       { "title": "Basics: pwd, whoami, cd", "text": "step1.md" },
>       { "title": "List & Sort Files with ls", "text": "step2.md" }
>     ],
>     "assets": {
>       "host01": [
>         { "file": "assets/create-files.sh", "target": "/tmp/create-files.sh" }
>       ]
>     }
>   },
>   "intro": { "text": "intro.md" },
>   "finish": { "text": "finish.md" }
> }
> ```
>
> **scripts/init.sh** (runs automatically when the scenario starts; it prepares files)
>
> ```bash
> #!/bin/bash
> set -euo pipefail
>
> # Place demo files under the user's home directory
> DEMO_DIR="$HOME/demo"
> mkdir -p "$DEMO_DIR/reports" "$DEMO_DIR/projects"
>
> # Create files with different modified times
> cd "$DEMO_DIR"
> echo "alpha" > alpha.txt
> sleep 1
> echo "beta" > beta.log
> sleep 1
> echo "This is report1" > reports/report1.txt
>
> # Set readable modified times so sorting is obvious
> touch -d "2025-10-01 10:00:00" alpha.txt
> touch -d "2025-10-02 12:30:00" beta.log
> touch -d "2025-10-03 09:15:00" reports/report1.txt
>
> # Make sure the asset script is executable (in case we want to reuse it)
> chmod +x /tmp/create-files.sh || true
> ```
>
> **scripts/foreground.sh** (opens in the main terminal and gives a friendly banner)
>
> ```bash
> #!/bin/bash
> set -euo pipefail
>
> # Also ensure demo files exist if foreground terminal restarts
> bash /tmp/create-files.sh || true
>
> clear
> echo "✅ Environment ready."
> echo "You're in a Unix terminal. Try: pwd, whoami, ls -l, cd ~/demo"
> echo
> exec bash
> ```
>
> **assets/create-files.sh** (idempotent helper; called by foreground too)
>
> ```bash
> #!/bin/bash
> set -euo pipefail
> DEMO_DIR="$HOME/demo"
> mkdir -p "$DEMO_DIR/reports" "$DEMO_DIR/projects"
> cd "$DEMO_DIR"
> [ -f alpha.txt ] || echo "alpha" > alpha.txt
> [ -f beta.log ]  || echo "beta"  > beta.log
> [ -f reports/report1.txt ] || echo "This is report1" > reports/report1.txt
> touch -d "2025-10-01 10:00:00" alpha.txt
> touch -d "2025-10-02 12:30:00" beta.log
> touch -d "2025-10-03 09:15:00" reports/report1.txt
> ```
>
> **intro.md**
>
> ```md
> # Linux CLI Warmup
>
> Welcome! This scenario gives you a **plain Unix terminal** to practice:
>
> - `pwd` and `whoami`
> - Navigating with `cd`
> - Listing and sorting with `ls -l`, `ls -lh`, `ls -lt`, `ls -ltr`
>
> Files are pre-created under `~/demo` as soon as the scenario starts—no clicks needed.
> ```
>
> **step1.md**
>
> ````md
> ## Step 1 — Basics
>
> 1. Show where you are:
>    ```bash
>    pwd
> ````
>
> 2. Who are you?
>
>    ```bash
>    whoami
>    ```
> 3. Go to the demo directory:
>
>    ```bash
>    cd ~/demo
>    ```
> 4. List the current directory:
>
>    ```bash
>    ls -l
>    ```
> 5. Peek inside the `reports` subdirectory:
>
>    ```bash
>    cd reports
>    ls -l
>    cd ..
>    ```
>
> When you're comfortable, click **Next**.
>
> ````
>
> **step2.md**
> ```md
> ## Step 2 — Sort by Modified Time
>
> From `~/demo`, try these:
>
> - Newest first:
>   ```bash
>   ls -lt
> ````
>
> * Oldest first:
>
>   ```bash
>   ls -ltr
>   ```
> * Human-readable sizes:
>
>   ```bash
>   ls -lh
>   ```
> * Combine flags:
>
>   ```bash
>   ls -lth
>   ```
>
> Inspect timestamps and confirm sorting changes with the flags.
>
> ````
>
> **finish.md**
> ```md
> # Nice Work!
>
> You practiced:
> - `pwd`, `whoami`, `cd`
> - `ls -l`, `ls -lh`, `ls -lt`, `ls -ltr`
>
> Feel free to retry and experiment with more `ls` flags.
> ````
>
> **Notes for Copilot (important):**
>
> * Ensure scripts are executable: `chmod +x scripts/*.sh assets/create-files.sh` in the repo instructions if needed.
> * `init.sh` must run automatically on scenario start. `foreground.sh` should launch in the main terminal so the learner lands directly in a shell with files already present.
> * Keep everything minimal—no verification scripts, no editors, just the terminal.
> * Use `$HOME` so paths work reliably (`~/demo`).
> * The pre-created files must exist **before** the learner runs any command.

