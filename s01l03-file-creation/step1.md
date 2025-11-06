# Step 1 — Create Your Digital Workspace 📁

Welcome to file creation mastery! Today you'll learn to create files and folders like a Linux pro. Think of it as building your digital workspace from scratch! 🏗️

## 🔍 Practice Exercise 1: Create Your First Files

Let's start by creating some empty files. This is like placing blank notebooks on your desk:

```bash
cd ~/workshop && touch notes.txt todo.txt ideas.txt
```{{exec}}

```bash
ls -lah *.txt
```{{exec}}

**What we're doing:** Moving to your workshop and creating three empty files with `touch`  
**What you'll see:** Three brand new files with 0 bytes - they're empty and ready for content! Notice the file sizes are all 0. 📝

---

## 🔍 Practice Exercise 2: Build Your Directory Structure

Now let's create some folders to organize your work. This is like adding filing cabinets to your office:

```bash
mkdir projects documents scripts backups
```{{exec}}

```bash
ls -lah
```{{exec}}

**What we're doing:** Creating four directories with `mkdir` to organize different types of work  
**What you'll see:** New directories appear with 'd' at the start of their permissions - the 'd' tells you they're directories! 📂

---

## 🔍 Practice Exercise 3: Create Complex Nested Structures

Let's build an entire project structure in one command. This is like constructing a multi-room building instantly:

```bash
mkdir -p development/{frontend,backend}/{src,tests,config}
```{{exec}}

```bash
ls -R development/
```{{exec}}

**What we're doing:** Using `mkdir -p` to create nested directories (frontend/src, frontend/tests, backend/src, etc.)  
**What you'll see:** A complete project structure with multiple levels - the `-p` flag creates parent directories automatically! 🏢

Amazing! You've created your digital workspace with files and organized directory structures. Ready to add content and learn viewing techniques? →
