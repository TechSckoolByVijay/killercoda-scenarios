## Step 2 — Practical: Navigate & List

From a Unix terminal:

1. Go to the demo folder:
   ```bash
   cd ~/demo
   ```{{exec}}

2. Show long listing:
   ```bash
   ls -l
   ```{{exec}}

3. Sort by modified time (newest first):
   ```bash
   ls -lt
   ```{{exec}}

4. Create a file named `.completed_step2` inside your HOME to mark completion:
   ```bash
   touch ~/.completed_step2
   ```{{exec}}

<details>
<summary>Hint</summary>

Use `pwd` to confirm your current directory, then combine `ls` flags like `-l`, `-t`, `-r`, `-h`.

</details>