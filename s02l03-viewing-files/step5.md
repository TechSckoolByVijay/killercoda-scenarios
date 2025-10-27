# Step 5 — Real-time file monitoring

The most powerful feature of `tail` is real-time monitoring with the `-f` flag!

---

### ⚡ Task — Master real-time monitoring

Create a log file and monitor it:

```bash
touch myapp.log
```{{exec}}

Start monitoring in real-time:

```bash
tail -f myapp.log
```{{exec}}

Now the terminal will wait and show new lines as they're added!

**Open a NEW terminal (or new tab) and add content:**

```bash
echo "Application started" >> myapp.log
```{{exec}}

```bash
echo "User logged in" >> myapp.log
```{{exec}}

```bash
echo "Processing request" >> myapp.log
```{{exec}}

Watch how the content appears in real-time in your monitoring terminal!

Stop monitoring by pressing `Ctrl+C` in the monitoring terminal.

Monitor multiple files:

```bash
tail -f myapp.log /var/log/syslog
```{{exec}}

Monitor with line count:

```bash
tail -n 20 -f myapp.log
```{{exec}}

**Real-world scenarios:**
- 📊 **Development**: Monitor application logs while testing
- 🔍 **Debugging**: Watch error logs in real-time
- 📈 **System Admin**: Monitor system logs for issues
- 🚀 **Deployment**: Watch deployment logs during releases

**Pro tip:** Use `tail -f` during application development to see logs as your code runs!

Click **Check** after mastering real-time monitoring.


