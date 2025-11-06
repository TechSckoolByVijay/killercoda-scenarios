# Step 2 — Move Around (cd) 🚶‍♂️

Excellent! Now you can see what's inside any directory. Time to learn how to **move between directories** like a Linux pro!

## The cd Command - Your Linux Teleporter

`cd` stands for **Change Directory**. Think of it as **teleporting instantly** to any location in Linux!

---

## 1. Move Into a Subdirectory

Let's enter the projects folder. First, see where you are:

```bash
pwd
```{{exec}}

Now move into projects:

```bash
cd projects
```{{exec}}

```bash
pwd
```{{exec}}

🎯 **You teleported!** Notice how your location changed?

---

## 2. See What's Inside Projects

Now let's explore this new location:

```bash
ls -lah
```{{exec}}

See those subdirectories? Let's visit one:

```bash
cd web-app
```{{exec}}

```bash
ls -lah
```{{exec}}

---

## 3. Go Back Up One Level (cd ..)

Want to go back to the parent directory? Use the **two dots** shortcut:

```bash
cd ..
```{{exec}}

```bash
pwd
```{{exec}}

🎯 **Magic!** You're back in the projects folder. The `..` means **"parent directory"**.

---

## 4. Jump to Home Directory (cd ~)

From anywhere in Linux, you can instantly **teleport home**:

```bash
cd ~
```{{exec}}

```bash
pwd
```{{exec}}

The `~` symbol is your **home base** shortcut!

---

## 5. Go to Root Directory (cd /)

Let's visit the **top of the entire Linux system**:

```bash
cd /
```{{exec}}

```bash
ls
```{{exec}}

```bash
pwd
```{{exec}}

Welcome to **root** (`/`) — the foundation of everything in Linux! 🏗️

---

## 6. Navigate Back to Workspace

Let's return to our workspace using an **absolute path**:

```bash
cd ~/workspace
```{{exec}}

```bash
pwd
```{{exec}}

Perfect! You're back in your working area.

---

## 🎯 Navigation Shortcuts Summary

- `cd foldername` → Enter a subdirectory
- `cd ..` → Go up one level (parent)  
- `cd ~` → Go to your home directory
- `cd /` → Go to root (top of system)
- `cd ~/workspace` → Go directly to workspace

## 💡 Pro Tip

**Tab Completion Magic!** 🪄  
Instead of typing full names, try: `cd pro` then press **Tab**  
Linux will automatically complete "projects" for you!

Ready to master **paths and advanced navigation**? Click **Next**!