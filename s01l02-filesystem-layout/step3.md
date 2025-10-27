# Step 3 — Variable Data (/var)

The `/var` directory contains data that changes frequently during system operation.

**Common `/var` subdirectories:**
- `/var/log` - system and application logs
- `/var/cache` - cached data from applications
- `/var/tmp` - temporary files that persist between reboots
- `/var/mail` - user mailboxes

---

### 🔍 Task — Explore the var directory

Let's explore the var directory:

```bash
ls /var
```{{exec}}

Let's look at the log directory (very important for debugging!):

```bash
ls /var/log
```{{exec}}

Let's peek at a system log file:

```bash
head /var/log/syslog
```{{exec}}

This shows the first 10 lines of the system log - very useful for troubleshooting!

Click **Check** after running all three commands.


