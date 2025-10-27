# Step 4 — Configuration (/etc)

The `/etc` directory contains system-wide configuration files. This is where Linux stores most system settings.

**Important `/etc` files:**
- `/etc/passwd` - user account information
- `/etc/hosts` - hostname to IP mappings
- `/etc/fstab` - filesystem mount information
- `/etc/crontab` - scheduled tasks

---

### 🔧 Task — Explore configuration files

Let's explore the etc directory:

```bash
ls /etc
```{{exec}}

Let's look at the hosts file (used for local DNS):

```bash
cat /etc/hosts
```{{exec}}

Let's see the system's hostname:

```bash
cat /etc/hostname
```{{exec}}

**Note:** These configuration files control how your Linux system behaves!

Click **Check** after running all three commands.