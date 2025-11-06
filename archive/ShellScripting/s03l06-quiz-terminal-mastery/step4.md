# Quiz Part 4 — Advanced Challenges (Questions 13-14)

Final boss level! Combine everything you've learned! 🔥

---

## 📝 Question 13: File Permissions & Information

**Scenario**: You need to check file permissions and get detailed information about files.

**Task**: Display detailed information about all files in the current directory, including permissions, sizes, and timestamps.

**💡 Instructions**: Type your command in the terminal, or reveal the answer below:

<details>
<summary>🎯 Click to see the correct answer</summary>

```bash
ls -la
```{{exec}}

**Explanation**: `ls -la` shows detailed information (`-l`) including hidden files (`-a`). This displays permissions, ownership, size, and modification times.

</details>

<details>
<summary>💡 Need a Hint First?</summary>

Use `ls -la` to see detailed information about all files, including hidden ones. The `-l` flag gives detailed info, and `-a` shows all files including hidden ones.

</details>

---

## 📝 Question 14: Advanced Navigation

**Scenario**: You're deep in directories and need to quickly navigate and track your path.

**Task**: Go back to your home directory, confirm your location, then return to the project directory using the path you were just in.

**💡 Instructions**: Type your commands in the terminal, or reveal the answer below:

<details>
<summary>🎯 Click to see the correct answer</summary>

Go to home directory:
```bash
cd ~
```{{exec}}

Confirm current location:
```bash
pwd
```{{exec}}

Return to project (replace with your actual path if different):
```bash
cd ~/myproject
```{{exec}}

Confirm you're back:
```bash
pwd
```{{exec}}

**Explanation**: `cd ~` takes you home, `pwd` shows your current path, and `cd ~/myproject` uses the absolute path to return to your project directory.

</details>

<details>
<summary>💡 Need a Hint First?</summary>

Use `cd ~` to go home, `pwd` to see where you are, then `cd` with the path to get back. The `~` symbol represents your home directory.

</details>

---

## � Congratulations! Quiz Complete!

You've successfully completed the Terminal Mastery Quiz! Here's what you've learned:

### 🎯 Skills Mastered:
- **Basic Navigation**: `pwd`, `ls`, `cd`
- **File Operations**: `touch`, `mkdir`, `cat`, `echo`
- **File Viewing**: `head`, `tail`, `more`, `less`
- **Search & Filter**: `grep`, `find`
- **System Information**: `whoami`, `date`, `cal`
- **File Details**: `ls -la` for permissions and info
- **Path Management**: Home directory (`~`) and absolute/relative paths

### 🚀 Next Steps:
1. Practice these commands daily
2. Try combining commands with pipes (`|`)
3. Learn about file permissions and `chmod`
4. Explore advanced `grep` patterns
5. Practice shell scripting basics

### 💡 Pro Tips:
- Use **Tab completion** to speed up typing
- Use **arrow keys** to navigate command history
- Use **Ctrl+C** to cancel running commands
- Use **clear** to clean up your terminal
- Remember: practice makes perfect!

**Keep exploring and happy scripting!** 🐧✨