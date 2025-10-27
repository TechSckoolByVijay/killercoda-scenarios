````markdown
# Step 3 — Variable Data (/var)

The `/var` directory contains data that changes frequently during system operation.

**Common `/var` subdirectories:**
- `/var/log` - system and application logs
- `/var/cache` - cached data from applications
- `/var/tmp` - temporary files that persist between reboots
- `/var/mail` - user mailboxes

**Task:** Let's explore the var directory:

```
ls /var
```{{exec}}

**Task:** Let's look at the log directory (very important for debugging!):

```
ls /var/log
```{{exec}}

**Task:** Let's peek at a system log file:

```
head /var/log/syslog
```{{exec}}

This shows the first 10 lines of the system log - very useful for troubleshooting!

Click **Check** after running all three commands.
````


