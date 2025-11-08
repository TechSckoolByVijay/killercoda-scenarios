# Step 1 — The Pipeline Mindset 🔗

Pipes (`|`) are Linux's secret weapon! They connect commands like building blocks, letting you process data in powerful chains.

## Your First Pipeline

Let's see what's in our workspace:

```bash
cd /workspace
```{{exec}}

```bash
ls -la
```{{exec}}

Now let's use a pipe to filter log data:

```bash
cat logs/app.log | grep ERROR
```{{exec}}

See how the pipe (`|`) takes output from `cat` and feeds it to `grep`? This is the foundation of Linux power!

---

## Why Pipelines Rock

Instead of creating temporary files, pipes process data in **real-time streams**:

```bash
cat logs/system.log | grep sshd
```{{exec}}

The `cat` command reads the file, `|` pipes that data to `grep`, which filters for "sshd" lines. Fast and elegant!

---

## Multiple Pipes

You can chain multiple commands:

```bash
cat logs/access.log | grep "GET" | grep "200"
```{{exec}}

This finds all GET requests that returned status 200. Each pipe refines the data further.

---

## 🎯 Your Turn: Build Your First Pipeline

**Challenge:** Find all WARNING entries in the application log and count them.

**Try this now:**
```bash
cat logs/app.log | grep WARNING | wc -l
```{{exec}}

**If it worked, you should see:** A number showing how many WARNING lines exist.

**Validation check:**
```bash
cat logs/app.log | grep WARNING
```{{exec}}

You should see the actual WARNING lines that were counted!

---

## 💡 Pipeline Thinking

Think of pipes like an assembly line:
1. **Input** → First command reads data
2. **Process** → Each pipe transforms or filters  
3. **Output** → Final result appears

### ✅ Key Takeaway
Pipes let you combine simple commands into powerful data processing workflows!

**Ready to chain commands conditionally?** Click **Next** to learn command chaining!