# Step 1 — Create Files & Folders (touch, mkdir) 📁

Welcome to your file creation workshop! Let's start building your Linux file system from scratch.

## Your Creation Superpowers

Think of `touch` as putting a **blank notebook on your desk**, and `mkdir` as adding **new drawers to organize your work**!

---

## 1. Navigate to Your Workshop

Let's start in your workshop directory:

```bash
cd ~/workshop
```{{exec}}

```bash
pwd
```{{exec}}

```bash
ls -lah
```{{exec}}

See the sample files we prepared? Now let's create your own!

---

## 2. Create Your First File (touch)

Let's create an empty file using `touch`:

```bash
touch notes.txt
```{{exec}}

```bash
ls -lah
```{{exec}}

🎯 **Magic!** You just created a blank file. Notice the file size is 0 bytes.

---

## 3. Create Multiple Files at Once

You can create several files in one command:

```bash
touch todo.txt ideas.txt project-plan.txt
```{{exec}}

```bash
ls -lah
```{{exec}}

Boom! Three new files created instantly! 

---

## 4. Create Your First Directory (mkdir)

Now let's create a folder to organize things:

```bash
mkdir projects
```{{exec}}

```bash
ls -lah
```{{exec}}

See the `d` at the beginning of the projects line? That means it's a **directory**!

---

## 5. Create Multiple Directories

Let's create several directories for better organization:

```bash
mkdir documents scripts backups
```{{exec}}

```bash
ls -lah
```{{exec}}

Perfect! Your workspace is getting organized.

---

## 6. Create Nested Directory Structure (mkdir -p)

Here's where it gets powerful! Create an entire folder tree in one command:

```bash
mkdir -p dev/frontend/components
```{{exec}}

```bash
mkdir -p dev/backend/api
```{{exec}}

```bash
ls -lah
```{{exec}}

Let's explore what we created:

```bash
cd dev
```{{exec}}

```bash
ls -lah
```{{exec}}

```bash
cd frontend
```{{exec}}

```bash
ls -lah
```{{exec}}

```bash
cd ../../
```{{exec}}

🎯 **The `-p` flag is magical!** It creates **parent directories if needed** — no more step-by-step folder creation!

---

## 7. Real-World Project Structure

Let's create a realistic project structure:

```bash
mkdir -p myapp/{src,tests,docs,config}
```{{exec}}

```bash
ls -lah
```{{exec}}

```bash
cd myapp
```{{exec}}

```bash
ls -lah
```{{exec}}

```bash
cd ..
```{{exec}}

---

## 8. Add Content to Your Files

Let's add some content to practice viewing later:

```bash
echo "Welcome to my Linux journey!" > notes.txt
```{{exec}}

```bash
echo "Task 1: Master Linux commands" > todo.txt
```{{exec}}

```bash
echo "Idea: Build a web application" > ideas.txt
```{{exec}}

```bash
ls -lah
```{{exec}}

Notice how the file sizes changed? They now contain data!

---

## 🎯 Creation Commands Summary

- `touch filename` → Create empty file
- `touch file1 file2 file3` → Create multiple files
- `mkdir dirname` → Create directory
- `mkdir dir1 dir2 dir3` → Create multiple directories  
- `mkdir -p path/to/nested/dirs` → Create nested structure

## 💡 Pro Tips

- **Use descriptive names** for files and folders
- **Organize with directories** before creating many files
- **`mkdir -p` is your friend** for complex structures
- **Check with `ls -lah`** after creating to verify

Ready to learn how to **read and view** your file contents? Click **Next**!