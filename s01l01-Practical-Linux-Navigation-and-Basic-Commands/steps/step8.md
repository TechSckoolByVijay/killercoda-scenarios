# Step 8 — Command History & Shortcuts ⏰

Linux remembers every command you run! Learn to leverage this powerful feature to work faster and smarter.

## View Your Command History

Let's see what commands you've run so far:

```bash
history
```{{exec}}

Each command has a number. You've been building up quite a history!

---

## 🔍 Search Your History

Find all `ls` commands you've used:
```bash
history | grep ls
```{{exec}}

Search for `cd` commands:
```bash
history | grep cd
```{{exec}}

Find `mkdir` commands:
```bash
history | grep mkdir
```{{exec}}

---

## 🚀 Rerun Commands by Number

Pick a command number from your history (e.g., if command #15 was `ls -la`):

First, see a specific range:
```bash
history | tail -10
```{{exec}}

Now rerun a command by its number (replace 5 with an actual number from your history):
```bash
!5
```{{exec}}

---

## ⚡ Quick History Shortcuts

Run the last command again:
```bash
pwd
```{{exec}}

```bash
!!
```{{exec}}

Run the last command that started with specific text:
```bash
ls /practice
```{{exec}}

```bash
cd /tmp
```{{exec}}

```bash
!ls
```{{exec}}

---

## 🧪 Interactive History Search

**Ctrl+R** provides reverse search through history. Try this:

1. Press **Ctrl+R** (you'll see a search prompt)
2. Type `mkdir` (it will find the most recent mkdir command)
3. Press **Enter** to execute, or **Ctrl+C** to cancel

Let's simulate this with a command:
```bash
mkdir test-history-demo
```{{exec}}

Now you can search for it later!

---

## 📝 History Management

See how many commands are stored:
```bash
echo $HISTSIZE
```{{exec}}

View last 5 commands:
```bash
history | tail -5
```{{exec}}

Clear history (use carefully!):
```bash
history -c
```{{exec}}

Check if it's cleared:
```bash
history
```{{exec}}

Don't worry - in this practice environment, clearing history doesn't affect your learning!

---

## 🎯 Practical History Workflow

Let's simulate a realistic workflow where history saves time:

1. Create some commands to build history:
```bash
cd /practice
```{{exec}}

```bash
ls -la documents
```{{exec}}

```bash
mkdir -p temp/backup/old
```{{exec}}

```bash
ls -ltr
```{{exec}}

2. Now use history to repeat tasks:
```bash
history | grep mkdir
```{{exec}}

3. Rerun the mkdir command (use the actual number you see):
```bash
!3
```{{exec}}

4. Use the last `ls` command:
```bash
!ls
```{{exec}}

---

## 💡 History Pro Tips

| Shortcut | Description | Example |
|----------|-------------|---------|
| `!!` | Last command | `sudo !!` (run last cmd as sudo) |
| `!n` | Command number n | `!15` (run command 15) |
| `!string` | Last command starting with string | `!ls` (last ls command) |
| `!?string?` | Last command containing string | `!?mkdir?` |
| **Ctrl+R** | Reverse search | Interactive search |

### 🚨 History Best Practices
- Review your history to learn patterns: `history | grep -E "(cd|ls|mkdir)"`
- Use `history | grep error` to find failed commands
- **Never** put passwords in commands (they're saved in history!)

### ✅ Key Takeaway
Master command history and you'll never type the same long command twice!

**Ready to keep your workspace clean?** Click **Next** to learn about `clear`!