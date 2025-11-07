# Step 6 — Permissions 101 🔒

Understand Linux permissions - the security foundation that controls who can read, write, and execute files!

## Reading Permission Codes

Let's decode the permission mystery:

```bash
cd /workshop/playground
```{{exec}}

```bash
ls -l
```{{exec}}

See those cryptic codes like `-rw-r--r--`? Let's break them down!

**Permission Format:** `[type][owner][group][others]`

Example: `-rw-r--r--`
- `–` = regular file (d = directory)
- `rw-` = owner can **r**ead and **w**rite
- `r--` = group can only **r**ead  
- `r--` = others can only **r**ead

---

## Understanding Permission Letters

| Letter | Permission | Files | Directories |
|--------|------------|--------|-------------|
| `r` | **Read** | View content | List contents |
| `w` | **Write** | Edit/modify | Create/delete files |
| `x` | **Execute** | Run as program | Enter directory |

---

## Making Files Executable

Let's make a script executable:

```bash
ls -l hello.sh
```{{exec}}

Currently not executable (no `x` permission). Let's change that:

```bash
chmod +x hello.sh
```{{exec}}

```bash
ls -l hello.sh
```{{exec}}

See the difference? Now it shows `-rwxr-xr-x` - the owner can execute it!

Try running it:
```bash
./hello.sh
```{{exec}}

It works! The script executed because we gave it execute permission.

---

## Setting Specific Permissions with Numbers

Permissions can be set with 3-digit numbers:

```bash
cd /workshop/scripts
```{{exec}}

```bash
ls -l backup.sh
```{{exec}}

Set common permission patterns:

**644 = rw-r--r--** (owner: read+write, others: read-only):
```bash
chmod 644 backup.sh
```{{exec}}

```bash
ls -l backup.sh
```{{exec}}

**755 = rwxr-xr-x** (owner: all permissions, others: read+execute):
```bash
chmod 755 backup.sh
```{{exec}}

```bash
ls -l backup.sh
```{{exec}}

Now the script is executable by everyone!

---

## Permission Number System

Each permission has a value:
- **r (read)** = 4
- **w (write)** = 2  
- **x (execute)** = 1

Add them up for each group:
- **7** = 4+2+1 = read+write+execute
- **6** = 4+2 = read+write
- **5** = 4+1 = read+execute
- **4** = 4 = read-only

**Common patterns:**
- **644** = owner can edit, others can read
- **755** = owner can edit, others can read and execute
- **600** = owner only (private file)

---

## 🎯 Your Turn: Practice Permissions

**Challenge:** Create and manage file permissions:

1. Create a new script file:
```bash
cd ~/my-learning
```{{exec}}

```bash
echo 'echo "Hello from my script!"' > my-script.sh
```{{exec}}

2. Check its default permissions:
```bash
ls -l my-script.sh
```{{exec}}

3. Try to run it (this should fail):
```bash
./my-script.sh
```{{exec}}

4. Make it executable:
```bash
chmod +x my-script.sh
```{{exec}}

5. Check permissions again:
```bash
ls -l my-script.sh
```{{exec}}

6. Now run it successfully:
```bash
./my-script.sh
```{{exec}}

7. Create a private file and secure it:
```bash
echo "This is my private data" > private.txt
```{{exec}}

```bash
chmod 600 private.txt
```{{exec}}

```bash
ls -l private.txt
```{{exec}}

**Expected result:** Your script should run, and private.txt should show `-rw-------` (owner-only access)!

---

## Real-World Permission Examples

```bash
cd /workshop/configs
```{{exec}}

```bash
ls -l
```{{exec}}

Configuration files are typically `644` (readable by all, writable by owner only).

```bash
cd /workshop/scripts
```{{exec}}

```bash
ls -l
```{{exec}}

Scripts need `755` or `744` to be executable.

---

## 💡 Permission Best Practices

### 📄 **File Permissions:**
- **644** - Documents, configs (most files)
- **600** - Private files (passwords, keys)
- **755** - Scripts, executables

### 📂 **Directory Permissions:**
- **755** - Standard directories  
- **700** - Private directories

### 🚨 **Security Tips:**
- Never use **777** (world-writable = dangerous!)
- Use **600** for sensitive data
- Scripts need **execute** permission to run
- Check permissions with `ls -l` regularly

### ✅ Key Takeaway
Permissions control access - understand them to keep your system secure and functional!

**Ready to learn about file ownership?** Click **Next** for the final concept!