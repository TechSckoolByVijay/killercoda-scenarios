# Step 3 — Move Around (cd)

Time for your **teleportation device**! 🚀

Now that you can see what's around you (`ls`) and understand paths, let's start moving with `cd` (change directory).

---

## The Command: cd

### 🏠 Go to a Specific Directory

```bash
cd /etc
```{{exec}}

```bash
pwd
```{{exec}}

```bash
ls
```{{exec}}

You just teleported to `/etc` - the configuration directory!

---

### ⬆️ Go Up One Level

```bash
cd ..
```{{exec}}

```bash
pwd
```{{exec}}

The `..` means "parent directory" - like going one floor up in a building.

---

### 🏡 Go Home Instantly

```bash
cd ~
```{{exec}}

```bash
pwd
```{{exec}}

The `~` symbol takes you to your home directory from anywhere!

---

### 📁 Go to Root Directory

```bash
cd /
```{{exec}}

```bash
pwd
```{{exec}}

```bash
ls
```{{exec}}

Now you're at the very top of the Linux filesystem!

---

## 🎯 Navigation Practice Sequence

Let's do a navigation workout:

```bash
cd /var
```{{exec}}

```bash
pwd && ls
```{{exec}}

```bash
cd log
```{{exec}}

```bash
pwd
```{{exec}}

```bash
cd ../..
```{{exec}}

```bash
pwd
```{{exec}}

---

## 💡 Pro Tips

### Tab Completion (Your Best Friend!):
Type `cd /et` and press **Tab** - Linux completes it to `/etc`!

### Quick Navigation:
- `cd` (no arguments) = Go home
- `cd -` = Go back to previous directory
- `cd ~username` = Go to another user's home

### Try Tab Completion:
```bash
cd /us
```
*Press Tab to complete to `/usr`*

**Your Task:** Practice navigating between different directories using absolute and relative paths!

Click **Check** when you've mastered moving around.