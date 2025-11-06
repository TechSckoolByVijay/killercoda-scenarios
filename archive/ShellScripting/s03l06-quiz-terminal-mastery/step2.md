# Quiz Part 2 — Navigation Mastery (Questions 5-8)

Time to explore the Linux filesystem! 🧭

---

## 📝 Question 5: See Your Surroundings

**Scenario**: You want to see all files and directories in your current location, including hidden files, with detailed information and human-readable file sizes.

**Task**: List all files (including hidden) with detailed info and readable sizes.

**💡 Instructions**: Type your command in the terminal, or reveal the answer below:

<details>
<summary>🎯 Click to see the correct answer</summary>

```bash
ls -lah
```{{exec}}

**Explanation**: `ls -lah` combines three flags: `-l` (long format), `-a` (all files including hidden), `-h` (human-readable sizes).

</details>

<details>
<summary>💡 Need a Hint First?</summary>

Use `ls` with three flags: `-l` for long format, `-a` for all files (including hidden), and `-h` for human-readable sizes. You can combine them as `-lah`.

</details>

---

## 📝 Question 6: System Exploration

**Scenario**: You need to explore the root directory to understand the Linux filesystem structure.

**Task**: Navigate to the root directory and list its contents.

**💡 Instructions**: Type your commands in the terminal, or reveal the answer below:

<details>
<summary>🎯 Click to see the correct answer</summary>

```bash
cd /
```{{exec}}

```bash
ls
```{{exec}}

**Explanation**: `cd /` navigates to the root directory (the top level of the filesystem), then `ls` shows what's there.

</details>

<details>
<summary>💡 Need a Hint First?</summary>

First use `cd` with `/` to go to root, then use `ls` to see what's there. The root directory is the top level of the Linux filesystem.

</details>

---

## 📝 Question 7: Relative Navigation

**Scenario**: You're currently in a deep directory path and want to go up two levels using relative path navigation.

**Task**: Navigate up two directory levels using relative paths.

**💡 Instructions**: Type your command in the terminal, or reveal the answer below:

<details>
<summary>🎯 Click to see the correct answer</summary>

```bash
cd ../..
```{{exec}}

**Explanation**: `../..` means "go up one level (`..`), then up another level (`..`)". This is relative path navigation.

</details>

<details>
<summary>💡 Need a Hint First?</summary>

You need to go up two levels (`../..`) from your current location. Use `cd ../../` to navigate relatively.

</details>

---

## 📝 Question 8: Advanced Listing

**Scenario**: You're in `/var/log` and want to see the 5 most recently modified log files.

**Task**: Show the 5 newest files with timestamps, sorted by modification time.

**💡 Instructions**: Type your command in the terminal, or reveal the answer below:

<details>
<summary>🎯 Click to see the correct answer</summary>

```bash
cd /var/log && ls -lht | head -5
```{{exec}}

**Explanation**: `cd /var/log` goes to the log directory, `ls -lht` lists files in long format (`-l`), human-readable (`-h`), sorted by time (`-t`), and `head -5` shows only the first 5 entries.

</details>

<details>
<summary>💡 Need a Hint First?</summary>

Use `cd /var/log` to get there, then `ls` with `-lt` for long format sorted by time, pipe to `head -5` to show only the first 5. Add `-h` for human-readable sizes.

</details>

---

## 🎯 Progress Check

Complete all 4 navigation questions above, then click **Check** to advance to File Operations!

**Commands covered**: `ls` (with flags), `cd` (absolute/relative), piping, file exploration