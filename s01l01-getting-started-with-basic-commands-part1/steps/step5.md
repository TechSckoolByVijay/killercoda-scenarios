# Step 5 — Navigate with Confidence: cd Mastery 🧭

`cd` (Change Directory) is your vehicle for moving around the Linux filesystem. Let's learn the shortcuts that make navigation lightning-fast!

## Basic Navigation

Let's start from your current location and move around systematically:

```bash
pwd
```{{exec}}

Move to the practice directory:
```bash
cd /practice
```{{exec}}

```bash
pwd
```{{exec}}

---

## 🏠 Home Sweet Home: cd ~

The tilde (`~`) is a shortcut to your home directory:

```bash
cd ~
```{{exec}}

```bash
pwd
```{{exec}}

Even shorter - `cd` with no arguments goes home too:
```bash
cd /practice/documents
```{{exec}}

```bash
cd
```{{exec}}

```bash
pwd
```{{exec}}

---

## ⬆️ Go Up Levels: .. and Multiple Levels

Single level up with `..`:
```bash
cd /practice/documents/reports
```{{exec}}

```bash
pwd
```{{exec}}

```bash
cd ..
```{{exec}}

```bash
pwd
```{{exec}}

Go up multiple levels:
```bash
cd ../..
```{{exec}}

```bash
pwd
```{{exec}}

---

## 🔄 Jump Back and Forth: cd -

The minus (`-`) takes you to your previous location - like browser back button!

```bash
cd /practice/projects/web-app
```{{exec}}

```bash
pwd
```{{exec}}

Jump back to previous location:
```bash
cd -
```{{exec}}

```bash
pwd
```{{exec}}

Jump back again:
```bash
cd -
```{{exec}}

```bash
pwd
```{{exec}}

---

## 🎯 Navigation Challenge

Let's combine these techniques in a real navigation scenario:

1. Start from home:
```bash
cd ~
```{{exec}}

2. Go to deep nested directory:
```bash
cd /practice/projects/web-app/src
```{{exec}}

3. Check contents:
```bash
ls -la
```{{exec}}

4. Go up one level:
```bash
cd ..
```{{exec}}

5. Go back to src:
```bash
cd -
```{{exec}}

6. Jump to home:
```bash
cd
```{{exec}}

7. Return to where you were:
```bash
cd -
```{{exec}}

---

## 🛠️ Relative vs Absolute Paths

**Absolute path** (starts with `/`):
```bash
cd /practice/documents
```{{exec}}

**Relative path** (from current location):
```bash
cd reports
```{{exec}}

```bash
pwd
```{{exec}}

Go back using relative path:
```bash
cd ../../projects
```{{exec}}

```bash
pwd
```{{exec}}

---

## 💡 Pro Navigation Tips

| Command | Description |
|---------|-------------|
| `cd` or `cd ~` | Go to home directory |
| `cd -` | Go to previous directory |
| `cd ..` | Go up one level |
| `cd ../..` | Go up two levels |
| `cd /` | Go to root directory |

### 🚨 Common Gotchas
- **Case sensitive**: `cd Documents` ≠ `cd documents`
- **Spaces in names**: Use quotes: `cd "My Folder"`
- **No such directory**: Check spelling and use tab completion!

### ✅ Key Takeaway
Master `cd ~`, `cd -`, and `..` combinations - you'll navigate 10x faster than beginners!

**Ready to create and manage directories?** Click **Next** to learn `mkdir` and `rmdir`!