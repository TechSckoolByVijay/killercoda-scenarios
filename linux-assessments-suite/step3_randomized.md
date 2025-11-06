## Step 3 — Randomized Lab Task

A unique lab was created at: `~/lab_<seed>`

**Your task:**
1. Find the directory starting with `lab_` in your home.
2. Inside it, locate files in `subA` and `subB`.
3. Copy the **newest** file among those two into `~/demo/projects/selected.log`.
4. Then mark completion:
   ```bash
   echo "done" > ~/.completed_step3
   ```{{exec}}

<details>
<summary>Hint</summary>

Compare timestamps with `ls -lt` in `subA` and `subB`. Use `cp` to place the newest file at the target path.

</details>