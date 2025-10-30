# Quiz Part 3 — File Operations (Questions 9-12)

Let's create, manage, and view files like a pro! 📁

---

## 📝 Question 9: Project Setup

**Scenario**: You're starting a new project and need to create the directory structure and initial files.

**Task**: Create a directory called `myproject`, navigate into it, and create three empty files: `readme.txt`, `main.py`, and `config.json`.

**💡 Instructions**: Type your commands in the terminal, or reveal the answer below:

<details>
<summary>🎯 Click to see the correct answer</summary>

```bash
mkdir myproject
```{{exec}}

```bash
cd myproject
```{{exec}}

```bash
touch readme.txt main.py config.json
```{{exec}}

**Explanation**: `mkdir` creates the directory, `cd` navigates into it, and `touch` creates multiple empty files at once.

</details>

<details>
<summary>💡 Need a Hint First?</summary>

Use `mkdir myproject` to create the directory, `cd myproject` to enter it, then `touch readme.txt main.py config.json` to create all three files at once.

</details>

---

## 📝 Question 10: Content Creation and Viewing

**Scenario**: You need to add content to a file and then view it completely.

**Task**: Add some text to `readme.txt` and display its contents.

**💡 Instructions**: First add content, then view it. Or reveal the answer below:

<details>
<summary>🎯 Click to see the correct answer</summary>

```bash
echo "This is my awesome project!" > readme.txt
```{{exec}}

```bash
echo "It will change the world!" >> readme.txt
```{{exec}}

```bash
cat readme.txt
```{{exec}}

**Explanation**: `echo` with `>` creates/overwrites the file, `>>` appends to it, and `cat` displays the complete contents.

</details>

<details>
<summary>💡 Need a Hint First?</summary>

Use `echo "text" > filename` to add content, then use `cat` followed by the filename to display the entire contents of the file.

</details>

---

## 📝 Question 11: Large File Navigation

**Scenario**: You have a large log file and need to examine it efficiently.

**Task**: Create a sample log file with multiple lines, then view just the first 3 lines and the last 3 lines.

**💡 Instructions**: Use the setup provided, then add your viewing commands:

<details>
<summary>🎯 Click to see the correct answer</summary>

First, create the sample log file:
```bash
cat > large_log.txt << EOF
Line 1: System started
Line 2: Loading configuration  
Line 3: Database connected
Line 4: Starting web server
Line 5: User authentication enabled
Line 6: Cache initialized
Line 7: System ready
Line 8: Processing requests
Line 9: Performance optimal
Line 10: All systems operational
EOF
```{{exec}}

View first 3 lines:
```bash
head -3 large_log.txt
```{{exec}}

View last 3 lines:
```bash
tail -3 large_log.txt
```{{exec}}

**Explanation**: `head -3` shows the first 3 lines and `tail -3` shows the last 3 lines. These commands are essential for log file analysis.

</details>

<details>
<summary>💡 Need a Hint First?</summary>

Use `head -3 filename` to see the first 3 lines and `tail -3 filename` to see the last 3 lines. These commands are essential for log file analysis.

</details>

---

## 📝 Question 12: Search and Filter

**Scenario**: You need to find specific information in a log file.

**Task**: Search for all lines containing the word "System" in the log file created above.

**💡 Instructions**: Type your command in the terminal, or reveal the answer below:

<details>
<summary>🎯 Click to see the correct answer</summary>

```bash
grep "System" large_log.txt
```{{exec}}

**Explanation**: `grep "System" filename` searches for lines containing "System". grep is your search ninja tool for finding text patterns in files.

</details>

<details>
<summary>💡 Need a Hint First?</summary>

Use `grep "System" filename` to search for lines containing "System". grep is your search ninja tool for finding text patterns in files.

</details>

---

## 🎯 Progress Check

Complete all 4 file operation questions above, then click **Check** to tackle the Advanced Challenges!

**Commands covered**: `mkdir`, `touch`, `cat`, `echo`, `head`, `tail`, `grep`