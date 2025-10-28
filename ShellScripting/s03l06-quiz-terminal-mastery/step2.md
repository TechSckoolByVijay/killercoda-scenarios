# Quiz Part 2 — Navigation Mastery (Questions 5-8)

Time to explore the Linux filesystem! 🧭

---

## 📝 Question 5: See Your Surroundings

**Scenario**: You want to see all files and directories in your current location, including hidden files, with detailed information and human-readable file sizes.

**Task**: List all files (including hidden) with detailed info and readable sizes.

```bash
# Your answer here:

```{{exec}}

<details>
<summary>💡 Click for Hint</summary>

Use `ls` with three flags: `-l` for long format, `-a` for all files (including hidden), and `-h` for human-readable sizes. You can combine them as `-lah` or `-la -h`.

</details>

---

## 📝 Question 6: System Exploration

**Scenario**: You need to explore the root directory to understand the Linux filesystem structure.

**Task**: Navigate to the root directory and list its contents.

```bash
# Your answer here (use two commands):


```{{exec}}

<details>
<summary>💡 Click for Hint</summary>

First use `cd` with `/` to go to root, then use `ls` to see what's there. The root directory is the top level of the Linux filesystem.

</details>

---

## 📝 Question 7: Relative Navigation

**Scenario**: You're currently in `/home/user/documents/projects` and want to go to `/home/user/downloads` using relative path navigation.

**Task**: Navigate to the downloads directory using relative paths (not absolute).

```bash
# First, let's set up the scenario:
mkdir -p /tmp/quiz/documents/projects /tmp/quiz/downloads
cd /tmp/quiz/documents/projects
pwd

# Now your task - navigate to downloads using relative path:

```{{exec}}

<details>
<summary>💡 Click for Hint</summary>

You need to go up two levels (`../..`) to reach `/tmp/quiz`, then down into `downloads`. Use `cd ../../downloads`.

</details>

---

## 📝 Question 8: Advanced Listing

**Scenario**: You're in `/var/log` and want to see the 5 most recently modified log files.

**Task**: Show the 5 newest files in `/var/log` with timestamps.

```bash
# Your answer here:

```{{exec}}

<details>
<summary>💡 Click for Hint</summary>

Use `ls` with `-lt` for long format sorted by time, then pipe to `head -5` to show only the first 5. Or use `ls -lth | head -5` for human-readable sizes too.

</details>

---

## 🎯 Progress Check

Complete all 4 navigation questions above, then click **Check** to advance to File Operations!

**Commands covered**: `ls` (with flags), `cd` (absolute/relative), piping, file exploration