# Step 7 — Ownership Basics 👥

Understand who owns files and why it matters in Linux's multi-user environment!

## Understanding File Ownership

Every file has two owners:
- **User owner** - Usually who created the file
- **Group owner** - A group that can have special access

Let's examine ownership:

```bash
cd ~/my-learning
```{{exec}}

```bash
ls -l
```{{exec}}

Look at the ownership columns:
`-rw-rw-r-- 1 root root 25 Nov  7 19:30 linux-commands.txt`

- First `root` = **user owner**
- Second `root` = **group owner**

---

## Who Owns What?

Check ownership of different files:

```bash
ls -l /workshop/configs/
```{{exec}}

```bash
ls -l /workshop/scripts/
```{{exec}}

```bash
whoami
```{{exec}}

Notice how most files show `root` as the owner? That's because they were created by the system setup.

---

## Why Ownership Matters

Ownership determines **who can modify** files, regardless of permissions:

```bash
cd /workshop/playground
```{{exec}}

```bash
ls -l normal.txt
```{{exec}}

Even though permissions allow writing, only the **owner** (or root) can actually modify the file.

---

## The chown Command (Concept)

`chown` changes file ownership. The syntax is:
```
chown user:group filename
```

**Important:** In most environments, you need special privileges (sudo) to change ownership.

Let's see what would happen (this may not work without sudo):

```bash
ls -l hello.sh
```{{exec}}

```bash
chown $USER:$USER hello.sh 2>/dev/null || echo "Need sudo privileges for ownership change"
```{{exec}}

```bash
ls -l hello.sh
```{{exec}}

---

## Ownership in Real Systems

In production environments:
- **Web files** might be owned by `www-data` user
- **Database files** owned by `mysql` or `postgres` users  
- **Log files** owned by service accounts
- **Your files** owned by your user account

This separation provides **security isolation** between different services.

---

## Group Ownership Benefits

Groups allow **shared access** among team members:

```bash
# Example: developers group
# chown alice:developers project-file.txt
# chown bob:developers another-file.txt
```

Both Alice and Bob can work on files owned by the `developers` group.

---

## 🎯 Your Turn: Examine Ownership Patterns

**Challenge:** Explore ownership across the system:

1. Check your own files:
```bash
cd ~/my-learning
```{{exec}}

```bash
ls -l
```{{exec}}

2. Compare with system files:
```bash
ls -l /workshop/logs/
```{{exec}}

3. Look at different directories:
```bash
ls -l /workshop/projects/website/
```{{exec}}

4. Check who you are:
```bash
id
```{{exec}}

This shows your user ID, group memberships, and privileges.

5. See file ownership patterns:
```bash
find /workshop -type f -exec ls -l {} \; | head -10
```{{exec}}

**Expected result:** You should see consistent ownership patterns across the workshop files!

---

## Real-World Ownership Scenarios

### 🌐 **Web Server Files:**
```bash
# Typical web server setup:
# chown www-data:www-data /var/www/html/
# chmod 755 /var/www/html/
```

### 📊 **Shared Project Files:**
```bash
# Development team setup:
# chown alice:developers project/
# chmod 775 project/  # Group can write
```

### 🔒 **Service Files:**
```bash
# Database files:
# chown mysql:mysql /var/lib/mysql/
# chmod 700 /var/lib/mysql/  # Owner only
```

---

## 💡 Ownership Principles

### 👤 **User Ownership:**
- **Creator** usually becomes owner
- **Owner** can always modify (if permissions allow)
- **Root** can change any ownership

### 👥 **Group Ownership:**
- **Groups** enable team collaboration  
- **Group members** share access to files
- **Common groups:** developers, admins, www-data

### 🔧 **Practical Commands:**
| Command | Purpose | Example |
|---------|---------|---------|
| `ls -l` | **View ownership** | See user:group |
| `chown user file` | **Change user owner** | `chown alice file.txt` |
| `chown :group file` | **Change group owner** | `chown :dev file.txt` |
| `chown user:group file` | **Change both** | `chown alice:dev file.txt` |

### ✅ Key Takeaway
Ownership controls **who can change files** - essential for security and collaboration in multi-user systems!

**Congratulations!** You've mastered Linux file operations and permissions! Click **Next** to complete your workshop!