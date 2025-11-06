# Step 3 — Paths & Navigation Mastery 🗺️

Outstanding! You can see directories and move around. Now let's master **paths** — the GPS coordinates of Linux!

## Understanding Linux Paths

Think of Linux like a **huge building** with an address system:

---

## 1. Absolute Paths (Full Address)

An **absolute path** starts from root (`/`) and gives the **complete address**:

```bash
pwd
```{{exec}}

```bash
cd /tmp/demo/bin
```{{exec}}

```bash
pwd
```{{exec}}

```bash
ls
```{{exec}}

🎯 **Absolute path:** `/tmp/demo/bin` — Complete address from the root!

---

## 2. Relative Paths (Directions from Here)

A **relative path** gives directions **from where you currently are**:

```bash
cd /tmp/demo
```{{exec}}

```bash
pwd
```{{exec}}

Now use a relative path to go to bin:

```bash
cd bin
```{{exec}}

```bash
pwd
```{{exec}}

Same destination, different route! 

---

## 3. Practice Path Navigation

Let's practice both types of paths. First, go to the etc directory using relative path:

```bash
cd ../etc
```{{exec}}

```bash
ls
```{{exec}}

Now go to your workspace using absolute path:

```bash
cd ~/workspace/documents
```{{exec}}

```bash
ls -lah
```{{exec}}

---

## 4. Tab Completion Magic

Here's where Linux becomes **incredibly helpful**! Try this:

Type `cd ~/workspace/proj` then press **Tab** (don't hit Enter yet!):

```bash
cd ~/workspace/proj
```

🪄 **Did you see it?** Linux automatically completed "projects" for you!

Now finish the command:

```bash
cd ~/workspace/projects
```{{exec}}

```bash
ls
```{{exec}}

---

## 5. Advanced Navigation Combo

Let's put everything together with a **navigation triangle**:

```bash
pwd
```{{exec}}

```bash
ls -lah
```{{exec}}

```bash
cd mobile-app
```{{exec}}

```bash
pwd
```{{exec}}

```bash
ls -lah
```{{exec}}

```bash
cd ../../documents/reports
```{{exec}}

```bash
pwd
```{{exec}}

🎯 **Navigation Mastery!** You just used relative paths to jump multiple directories!

---

## 6. The Navigation Triangle

Remember this **powerful combination**:

1. **`pwd`** — Where am I?
2. **`ls -lah`** — What's here?  
3. **`cd`** — Go somewhere else

Repeat this cycle and you can navigate **anywhere** in Linux!

---

## 🎯 Path Types Summary

### Absolute Paths (Full Address)
- `/home/user/documents` 
- `/tmp/demo/var/log`
- `~/workspace/projects` (~ = home)

### Relative Paths (From Current Location)
- `documents/reports` (go into subdirectories)
- `../..` (go up two levels)
- `../projects/web-app` (up one, then into folders)

## 💡 Pro Navigation Tips

- **Use Tab completion** — Let Linux help you type
- **`pwd` when lost** — Always know where you are
- **`ls -lah` before moving** — See your options first
- **Practice both path types** — Become flexible

## 🏆 Navigation Achievement Unlocked!

You now navigate Linux like a **professional system administrator**! 

Ready to celebrate your **navigation mastery**? Click **Next**!