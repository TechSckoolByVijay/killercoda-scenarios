# Step 2 — File Sorting Mastery 📂

Now that you know the basics, let's master the art of file listing and sorting. Make sure you're in the demo directory first:

```bash
cd ~/demo
```{{exec}}

---

## 1. Sort by Modification Time (Newest First)

Let's see files sorted by when they were last modified, with the newest files at the top:

```bash
ls -lt
```{{exec}}

The `-t` flag sorts by modification time. Notice how the files are ordered!

---

## 2. Sort by Modification Time (Oldest First)

Want to see the oldest files first? Add the reverse flag:

```bash
ls -ltr
```{{exec}}

The `-r` flag reverses the order. Now the oldest files appear first.

---

## 3. Human-Readable File Sizes

Let's make those file sizes easier to read:

```bash
ls -lh
```{{exec}}

The `-h` flag shows file sizes in human-readable format (KB, MB, GB instead of bytes).

---

## 4. Combine Flags for Power Users

You can combine multiple flags for maximum information:

```bash
ls -lth
```{{exec}}

This gives you detailed listing (`-l`), sorted by time (`-t`), with human-readable sizes (`-h`).

---

## 5. Compare Different Sorting

Let's see the difference between time-sorted and alphabetical:

```bash
ls -l
```{{exec}}

```bash
ls -lt
```{{exec}}

Notice how the order changes? The first command sorts alphabetically, the second by modification time.

---

### 🎯 Master's Tips

- `ls -lt` - Newest files first (great for finding recent work)
- `ls -ltr` - Oldest files first (good for cleanup tasks)
- `ls -lh` - Human-readable sizes (easier on the eyes)
- `ls -lth` - The power combo (time + human sizes)

### 🧭 Real-World Usage

These commands are essential for:
- **Finding recent files** when you forgot where you saved something
- **Cleanup tasks** to identify old files taking up space
- **Development work** to see which files changed recently

Congratulations! You've mastered basic Linux CLI navigation and file listing. Click **Next** to finish!