# Step 9 — Chain Commands Together ⛓️

Why run one command at a time when you can combine them? Learn to chain commands for maximum efficiency!

## Sequential Execution with ;

The semicolon (`;`) runs commands one after another, regardless of success or failure:

```bash
pwd ; ls ; whoami
```{{exec}}

All three commands run in sequence. Let's see it in a practical example:

```bash
cd /tmp ; mkdir chain-demo ; cd chain-demo ; pwd
```{{exec}}

---

## 🎯 Conditional Execution with &&

The double ampersand (`&&`) only runs the next command if the previous one succeeds:

```bash
cd /practice && ls -l
```{{exec}}

This will work because `/practice` exists. But this won't run `ls`:

```bash
cd /nonexistent-directory && ls -l
```{{exec}}

The `ls` didn't run because `cd` failed!

---

## 🚨 Error Handling with ||

The double pipe (`||`) runs the next command only if the previous one fails:

```bash
cd /practice || echo "Could not enter practice directory"
```{{exec}}

```bash
cd /nonexistent || echo "Directory not found, creating it..." 
```{{exec}}

---

## ⚡ Background Processing with &

The single ampersand (`&`) runs commands in the background:

```bash
sleep 5 &
```{{exec}}

The command runs in background. Check what's running:

```bash
jobs
```{{exec}}

You can continue working while it runs! Let's start another:

```bash
sleep 3 & sleep 7 & jobs
```{{exec}}

---

## 🧪 Practical Chaining Examples

**Project setup workflow:**
```bash
mkdir -p myapp/src && cd myapp && echo "# My App" > README.md && ls -la
```{{exec}}

**Backup and verify:**
```bash
cd /practice && cp -r documents backup-docs && ls -la backup-docs
```{{exec}}

**System info collection:**
```bash
echo "System Info:" ; uname -a ; echo "Current User:" ; whoami ; echo "Current Location:" ; pwd
```{{exec}}

---

## 🎯 Advanced Chaining Challenge

Let's build a complex workflow that demonstrates real-world usage:

1. **Create project structure, check result, and navigate:**
```bash
mkdir -p /tmp/demo-project/{src,tests,docs} && echo "Project created successfully" && cd /tmp/demo-project && ls -la
```{{exec}}

2. **Create files and verify:**
```bash
echo "console.log('Hello');" > src/app.js && echo "# Tests" > tests/README.md && ls -la src && ls -la tests
```{{exec}}

3. **Background monitoring while working:**
```bash
sleep 10 & echo "Background task started" ; ls -R . ; jobs
```{{exec}}

---

## 🔧 Job Control

When you have background jobs, you can control them:

Start a long background task:
```bash
sleep 15 &
```{{exec}}

Check jobs:
```bash
jobs
```{{exec}}

Bring job to foreground (if any background jobs exist):
```bash
fg 2>/dev/null || echo "No background jobs"
```{{exec}}

**Note:** Press **Ctrl+C** if a job is in foreground to stop it.

---

## 💡 Command Chaining Cheat Sheet

| Operator | Behavior | Example | Use Case |
|----------|----------|---------|----------|
| `;` | Always run next | `cmd1 ; cmd2` | Sequential tasks |
| `&&` | Run if previous succeeded | `cmd1 && cmd2` | Dependent tasks |
| `\|\|` | Run if previous failed | `cmd1 \|\| cmd2` | Error handling |
| `&` | Run in background | `cmd1 &` | Long-running tasks |

### 🚀 Real-World Power Examples

**Safe directory operations:**
```bash
cd /tmp && mkdir -p safe-test && cd safe-test && echo "Safe!" || echo "Something failed"
```{{exec}}

**Development workflow:**
```bash
cd /practice && ls -la || echo "Not in practice dir" && pwd
```{{exec}}

### ✅ Key Takeaway
Command chaining turns you into a CLI power user - combine simple commands for complex workflows!

**Ready to clean up your workspace?** Click **Next** for the final command!