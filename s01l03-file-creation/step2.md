# Step 2 — Add Content & View Files 👀

Excellent! You've created your workspace structure. Now let's add some content and learn to read files like a pro! �

## 🔍 Practice Exercise 1: Add Content to Your Files

First, let's put some content into those empty files you created. This brings your files to life:

```bash
echo "Welcome to my Linux learning journey!" > notes.txt
```{{exec}}

```bash
echo "Task 1: Master file operations" > todo.txt
```{{exec}}

```bash
ls -lah *.txt
```{{exec}}

**What we're doing:** Using `echo >` to add content to your files  
**What you'll see:** The file sizes change from 0 bytes to actual sizes - they now contain your text! 📝

---

## 🔍 Practice Exercise 2: Read Your Files Instantly

Now let's read the content you just created. `cat` is perfect for quick file reading:

```bash
cat notes.txt
```{{exec}}

```bash
cat todo.txt
```{{exec}}

**What we're doing:** Using `cat` to display the complete contents of your files  
**What you'll see:** Your text appears on screen instantly - `cat` shows the entire file content at once! 👀

---

## 🔍 Practice Exercise 3: Practice with Larger Files

Let's work with a larger file to see the difference between `cat` and `less`:

```bash
cat documentation.txt
```{{exec}}

```bash
less documentation.txt
```{{exec}}

**What we're doing:** First showing a long file with `cat` (lots of scrolling!), then using `less` for comfortable reading  
**What you'll see:** `cat` shows everything at once, but `less` lets you scroll page by page. In `less`, use arrows to scroll and 'q' to quit! 📚

Perfect! You've mastered adding content and reading files. Ready to learn precision viewing techniques? →
