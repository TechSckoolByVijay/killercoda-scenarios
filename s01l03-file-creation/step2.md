# Step 2 — View Files (cat, less) 👀

Excellent! You've created files and folders. Now let's learn how to **read and view file contents** like a Linux professional!

## Your File Reading Superpowers

Think of `cat` as **unrolling a scroll** to see everything at once, and `less` as **reading a book page by page**!

---

## 1. View Entire File with cat

Let's start by viewing the content of your files:

```bash
cat notes.txt
```{{exec}}

🎯 **Perfect!** `cat` displayed the entire content instantly.

---

## 2. View Multiple Files

You can view several files in sequence:

```bash
cat notes.txt todo.txt ideas.txt
```{{exec}}

Notice how `cat` shows all files one after another? Great for comparing content!

---

## 3. View Sample Configuration File

Let's look at a configuration file that was prepared for you:

```bash
cat app.config
```{{exec}}

This is a typical configuration file format used in real applications.

---

## 4. View Sample Log File

Now let's see a log file (these are very common in development):

```bash
cat server.log
```{{exec}}

See all those log entries? This is typical server output that developers analyze daily!

---

## 5. When cat Isn't Enough (Large Files)

For **large files**, `cat` can be overwhelming. Let's try the documentation file:

```bash
cat documentation.txt
```{{exec}}

That was a lot of content at once! Sometimes you need a **more controlled** way to view files.

---

## 6. Introduce less - The Comfortable Reader

For large files, use `less` to view content **page by page**:

```bash
less documentation.txt
```{{exec}}

🎯 **Welcome to `less`!** You're now in a **scrollable viewer**.

**Navigation controls:**
- **↓ Arrow** or **Space** → Move down
- **↑ Arrow** → Move up  
- **q** → Quit and return to terminal

**Try it now!** Use the arrow keys to scroll through the document, then press **q** to exit.

---

## 7. Practice with Log File Viewing

Let's use `less` with the server log for comfortable reading:

```bash
less server.log
```{{exec}}

This is **much better** for analyzing logs! Scroll through and see the different log levels (INFO, WARN, ERROR), then press **q** to exit.

---

## 8. Search Within less

Here's a pro tip! While in `less`, you can **search for text**:

```bash
less server.log
```{{exec}}

**While in less:**
- Type `/ERROR` and press Enter to search for "ERROR"
- Press **n** to find the next occurrence
- Press **q** to quit

Try it now!

---

## 🎯 File Viewing Summary

### cat - Quick Full View
- `cat filename` → Display entire file content
- `cat file1 file2` → Display multiple files
- **Best for:** Small files, quick content checks

### less - Comfortable Reading  
- `less filename` → Scrollable page-by-page view
- **Navigation:** Arrow keys, Space, q to quit
- **Search:** `/searchterm` then n for next
- **Best for:** Large files, detailed analysis, logs

## 💡 Real-World Usage

- **cat** → Quick config checks, small file content
- **less** → Log file analysis, documentation reading, large file inspection

## 🔍 When to Use Which?

- **File < 50 lines?** → Use `cat`
- **File > 50 lines?** → Use `less` 
- **Need to search content?** → Use `less`
- **Quick content verification?** → Use `cat`

Ready to learn **precision viewing** with head and tail? Click **Next**!