# Step 1 — Terminal Basics & Navigation 🎯

Welcome to your Linux CLI adventure! Let's start with the essential commands that every Linux user needs to know.

## 1. Where Am I? (pwd)

First, let's find out your current location in the file system:

```bash
pwd
```{{exec}}

**pwd** stands for **Print Working Directory** - it shows you exactly where you are in the Linux file system.

---

## 2. Who Am I? (whoami)

Now let's discover your current user identity:

```bash
whoami
```{{exec}}

This command tells you which user account you're currently using.

---

## 3. Navigate to Demo Directory

Let's move to our practice directory where files are waiting for you:

```bash
cd ~/demo
```{{exec}}

The `~` symbol is a shortcut for your home directory, so `~/demo` means the demo folder in your home.

---

## 4. List Directory Contents

Now let's see what's in our demo directory:

```bash
ls -l
```{{exec}}

The `-l` flag gives you a detailed list showing file permissions, sizes, and modification dates.

---

## 5. Explore Subdirectories

Let's peek inside the reports folder and then come back:

```bash
cd reports
```{{exec}}

```bash
ls -l
```{{exec}}

```bash
cd ..
```{{exec}}

The `..` means "go up one directory level" - it's like clicking the back button.

---

### 🎯 What You've Learned

- `pwd` - Shows your current directory
- `whoami` - Shows your current user
- `cd` - Changes directories 
- `ls -l` - Lists files with details
- `..` - Refers to the parent directory

Ready for more? Click **Next** to learn about file sorting!