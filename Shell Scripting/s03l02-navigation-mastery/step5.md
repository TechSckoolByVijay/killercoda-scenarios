# Step 5 — Navigation Master Practice

Time to put it all together! 🥷

Let's combine everything you've learned into a **real-world navigation challenge**. This is how you'll work with Linux systems daily!

---

## 🎯 The Navigation Triangle Workout

Master the three-step flow every Linux pro uses:

### 1. Where am I?
```bash
pwd
```{{exec}}

### 2. What's here?
```bash
ls -la
```{{exec}}

### 3. Where do I want to go?
```bash
cd /usr/local
```{{exec}}

---

## 🏃 Speed Navigation Challenge

Let's do a full navigation workout. Follow this sequence:

### Round 1 - System Exploration:
```bash
cd / && pwd && ls
```{{exec}}

### Round 2 - Deep Dive:
```bash
cd /var/log && pwd && ls -lht | head -5
```{{exec}}

### Round 3 - Quick Home Return:
```bash
cd ~ && pwd && ls -la
```{{exec}}

### Round 4 - Relative Navigation:
```bash
cd ../.. && pwd && ls
```{{exec}}

### Round 5 - Back to Base:
```bash
cd && pwd
```{{exec}}

---

## 🚀 Advanced Navigation Combos

### The Pro Workflow:
```bash
cd /etc && ls -la | grep "\.conf" | head -5
```{{exec}}

This: Goes to `/etc` → Lists all files → Finds config files → Shows first 5

### The Developer Check:
```bash
cd /usr/bin && ls -la | grep "python"
```{{exec}}

### The System Admin Scan:
```bash
cd /var && ls -lhS | head -10
```{{exec}}

---

## 🎪 Tab Completion Mastery

Practice these tab completion tricks:

1. Type `cd /us` then press **Tab**
2. Type `cd /var/l` then press **Tab**  
3. Type `ls /et` then press **Tab**

---

## 💡 Real-World Scenarios

### Scenario 1 - Find Config Files:
```bash
cd /etc && ls -la | grep nginx
```{{exec}}

### Scenario 2 - Check Log Directory:
```bash
cd /var/log && ls -lht | head -3
```{{exec}}

### Scenario 3 - Return Home Quickly:
```bash
cd ~ && ls -la | grep "^\."
```{{exec}}

---

## 🏆 Master Challenge

Complete this navigation sequence without looking at the hints:

1. Go to root directory
2. List contents with details and human-readable sizes
3. Navigate to `/usr/local` 
4. Check what's there
5. Go up two directories
6. Return home
7. Show your current location

### Your Solution:
```bash
# Complete this challenge!
cd / && ls -lh && cd /usr/local && ls && cd ../.. && cd ~ && pwd
```{{exec}}

---

## 🎉 You're Now a Navigation Ninja!

You've mastered:
✅ **ls** in all its variations  
✅ **cd** with absolute and relative paths  
✅ **Path navigation** like a pro  
✅ **Tab completion** for speed  
✅ **Real-world workflows**  

**Your Task:** Complete the master challenge above and prove your navigation mastery!

Click **Check** to graduate as a Navigation Ninja! 🥷