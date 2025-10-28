# Quiz Part 3 — File Operations (Questions 9-12)

Let's create, manage, and view files like a pro! 📁

---

## 📝 Question 9: Project Setup

**Scenario**: You're starting a new project and need to create the directory structure and initial files.

**Task**: Create a directory called `myproject`, navigate into it, and create three empty files: `readme.txt`, `main.py`, and `config.json`.

```bash
# Your answer here (multiple commands):




```{{exec}}

<details>
<summary>💡 Click for Hint</summary>

Use `mkdir myproject` to create the directory, `cd myproject` to enter it, then `touch readme.txt main.py config.json` to create all three files at once.

</details>

---

## 📝 Question 10: Content Creation and Viewing

**Scenario**: You need to add content to a file and then view it completely.

**Task**: Add some text to `readme.txt` and display its contents.

```bash
# Add content (you can use this):
echo "This is my awesome project!" > readme.txt
echo "It will change the world!" >> readme.txt

# Now display the file contents:

```{{exec}}

<details>
<summary>💡 Click for Hint</summary>

Use `cat` followed by the filename to display the entire contents of the file. The `cat` command is perfect for viewing complete files.

</details>

---

## 📝 Question 11: Large File Navigation

**Scenario**: You have a large log file and need to examine it efficiently.

**Task**: Create a sample log file with multiple lines, then view just the first 3 lines and the last 3 lines.

```bash
# Create sample log file:
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

# View first 3 lines:

# View last 3 lines:

```{{exec}}

<details>
<summary>💡 Click for Hint</summary>

Use `head -3 filename` to see the first 3 lines and `tail -3 filename` to see the last 3 lines. These commands are essential for log file analysis.

</details>

---

## 📝 Question 12: Search and Filter

**Scenario**: You need to find specific information in a log file.

**Task**: Search for all lines containing the word "System" in the log file created above.

```bash
# Your answer here:

```{{exec}}

<details>
<summary>💡 Click for Hint</summary>

Use `grep "System" filename` to search for lines containing "System". grep is your search ninja tool for finding text patterns in files.

</details>

---

## 🎯 Progress Check

Complete all 4 file operation questions above, then click **Check** to tackle the Advanced Challenges!

**Commands covered**: `mkdir`, `touch`, `cat`, `echo`, `head`, `tail`, `grep`