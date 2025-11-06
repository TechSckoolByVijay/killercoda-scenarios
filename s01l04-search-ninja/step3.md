# Step 3 — Master Pipes & Filtering ⚡

Time to master the ultimate ninja technique - combining grep with other commands using pipes! This is where you become truly powerful! 🥷

## 🔍 Practice Exercise 1: Basic Pipeline Filtering

Let's learn to filter the output of other commands - this is incredibly useful for system administration:

```bash
cat processes.txt | grep nginx
```{{exec}}

```bash
ps aux | grep -v "grep"
```{{exec}}

**What we're doing:** Using pipes (`|`) to send output from one command to grep for filtering  
**What you'll see:** The first command gets all processes, then grep filters to show only nginx processes! Pipeline power! 🔗

---

## 🔍 Practice Exercise 2: Chain Multiple Filters

Now let's chain multiple grep commands together for surgical precision:

```bash
cat server.log | grep "ERROR" | grep "database"
```{{exec}}

```bash
cat users.txt | grep "Premium" | grep -c "2024"
```{{exec}}

**What we're doing:** First finding all ERROR lines, then filtering those to only show database errors; then counting Premium users from 2024  
**What you'll see:** Multi-stage filtering lets you narrow down results step by step - like zooming in with a telescope! 🔭

---

## 🔍 Practice Exercise 3: Professional Log Analysis

Let's put it all together with real-world log analysis techniques:

```bash
cat server.log | grep -E "ERROR|WARN" | grep -v "Database" | head -5
```{{exec}}

```bash
cat app.config | grep -v "^#" | grep "true"
```{{exec}}

**What we're doing:** Finding all errors and warnings except database ones, then finding enabled config settings (excluding comments)  
**What you'll see:** Professional-grade filtering that finds exactly what you need while excluding noise - true ninja mastery! 🎯

🏆 **Congratulations!** You're now a certified Search Ninja with grep mastery! Ready for the final graduation challenge? →
