# Step 1 — See Your World (ls)

Time to open your eyes in the Linux world! 👀

You know where you are (`pwd`), but what's around you? That's where `ls` comes to the rescue!

## The Command: ls

```bash
ls
```{{exec}}

---

### 🎯 What ls Does

**ls** stands for **list** - it shows you the files and folders inside your current directory.

Think of `ls` like **opening a drawer** - you're checking what's inside before deciding what to do next.

### 🧐 What You'll See

You'll see a list of files and directories. Some might be:
- Files (documents, scripts, etc.)
- Directories (folders containing more stuff)

### 🔍 Different Views

Try these variations:

#### Basic list:
```bash
ls
```{{exec}}

#### Long format (detailed info):
```bash
ls -l
```{{exec}}

#### Include hidden files:
```bash
ls -a
```{{exec}}

#### Human-readable sizes:
```bash
ls -lh
```{{exec}}

---

### 💡 Real-World Analogy

Imagine you're in a library:
- `ls` = Quick glance at book spines
- `ls -l` = Reading the detailed catalog with author, date, size
- `ls -a` = Seeing even the books kept behind the counter

### 🚀 Pro Tips

- Hidden files start with a dot (`.bashrc`, `.profile`)
- Directories often appear in blue or with different colors
- Use `ls -la` to combine long format + hidden files

**Your Task:** Try all the `ls` variations above and see what's in your current location!

Click **Check** when you've explored your surroundings.