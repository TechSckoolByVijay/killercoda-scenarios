# Step 1 — Create Files with touch 📄

The `touch` command is your file creation magic wand! It instantly creates empty files - perfect for setting up project structures.

## Create Your First Files

Let's start in your home directory and create some files:

```bash
pwd
```{{exec}}

```bash
ls -l
```{{exec}}

Notice the `welcome.txt` file is already there. Now create new empty files:

```bash
touch notes.txt
```{{exec}}

```bash
touch todo.md
```{{exec}}

```bash
touch project-ideas.txt
```{{exec}}

Check what you created:
```bash
ls -l
```{{exec}}

See how `touch` created files with 0 bytes? They're empty but ready for content!

---

## Multiple Files at Once

You can create several files in one command:

```bash
touch file1.txt file2.txt file3.txt
```{{exec}}

```bash
ls -l *.txt
```{{exec}}

Look at those timestamps - they all show when you just created them!

---

## Practical File Structure

Let's create a realistic project structure:

```bash
mkdir my-project
```{{exec}}

```bash
cd my-project
```{{exec}}

```bash
touch README.md index.html style.css script.js
```{{exec}}

```bash
ls -l
```{{exec}}

Perfect! You've created a basic web project structure.

---

## 🎯 Your Turn: Create Your Own Files

**Challenge:** Create files for a personal project:

1. Go back to home and create a directory called `my-learning`:
```bash
cd ~ && mkdir my-learning
```{{exec}}

2. Go into it and create these files:
```bash
cd my-learning
```{{exec}}

```bash
touch linux-commands.txt progress-log.md favorite-resources.txt
```{{exec}}

3. Verify your creation:
```bash
ls -l
```{{exec}}

**Expected result:** You should see 3 empty files with today's timestamp!

---

## 💡 Why touch is Useful

- **Placeholder files** - Reserve filenames for later
- **Project setup** - Create file structure before coding
- **Testing** - Quick files for practice
- **Timestamps** - Update file modification times

### ✅ Key Takeaway
`touch` creates empty files instantly - your foundation for any file-based work!

**Ready to add content to files?** Click **Next** to learn about writing text!