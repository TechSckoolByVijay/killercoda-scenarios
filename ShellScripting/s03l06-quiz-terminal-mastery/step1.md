# Quiz Part 1 — Terminal Basics (Questions 1-4)

Let's start with the fundamentals! 🎯

---

## 📝 Question 1: Where Am I?

**Scenario**: You've just logged into a new Linux server and need to know your current location.

**Task**: Display your current working directory.

**💡 Instructions**: Type your command in the terminal on the right, or click the correct answer below after trying:

<details>
<summary>🎯 Click to see the correct answer</summary>

```bash
pwd
```{{exec}}

**Explanation**: `pwd` stands for "Print Working Directory" and shows your current location in the filesystem.

</details>

<details>
<summary>💡 Need a Hint First?</summary>

Use the command that **prints working directory**. It's a 3-letter command that shows your current location in the filesystem.

</details>

---

## 📝 Question 2: Identity Check

**Scenario**: You're working on a shared server and need to confirm which user account you're logged in as.

**Task**: Display your current username.

**💡 Instructions**: Type your command in the terminal, or reveal the answer below:

<details>
<summary>🎯 Click to see the correct answer</summary>

```bash
whoami
```{{exec}}

**Explanation**: `whoami` tells you which user account you're currently logged in as.

</details>

<details>
<summary>💡 Need a Hint First?</summary>

Use the command that answers "who am I?" - it's literally that question but without spaces and as one word.

</details>

---

## 📝 Question 3: Clean Workspace

**Scenario**: Your terminal is cluttered with previous commands and output. You want to start fresh.

**Task**: Clear your terminal screen.

**💡 Instructions**: Type your command in the terminal, or reveal the answer below:

<details>
<summary>🎯 Click to see the correct answer</summary>

```bash
clear
```{{exec}}

**Explanation**: `clear` removes all previous output from your terminal screen, giving you a fresh workspace.

</details>

<details>
<summary>💡 Need a Hint First?</summary>

Use the command that makes your screen clear and fresh. Think of cleaning a whiteboard. There's also a keyboard shortcut: Ctrl+L

</details>

---

## 📝 Question 4: Foundation Combo

**Scenario**: You want to quickly check your location, identity, and then clean your screen - all in one command line.

**Task**: Combine all three basic commands using `&&` operator.

**💡 Instructions**: Type your command in the terminal, or reveal the answer below:

<details>
<summary>🎯 Click to see the correct answer</summary>

```bash
pwd && whoami && clear
```{{exec}}

**Explanation**: The `&&` operator runs commands in sequence. Each command runs only if the previous one succeeds.

</details>

<details>
<summary>💡 Need a Hint First?</summary>

Use the three commands from above connected with `&&`. Format: `command1 && command2 && command3`

</details>

---

## 🎯 Progress Check

Complete all 4 questions above, then click **Check** to move to Navigation Mastery!

**Commands covered**: `pwd`, `whoami`, `clear`, command chaining