# Step 2 — Home Directory (/home)

The `/home` directory contains personal directories for each user. Think of it like "Users" folder in Windows.

**Structure:**
- `/home/username` - each user gets their own directory
- Your personal files, documents, and settings go here

---

### 🏠 Task — Explore your home directory

Let's explore the home directory:

```bash
ls /home
```{{exec}}

Let's see what's in your current user's home directory:

```bash
ls ~
```{{exec}}

The `~` symbol is a shortcut for your home directory!

Let's verify what `~` represents:

```bash
echo $HOME
```{{exec}}

Click **Check** after running all three commands.



