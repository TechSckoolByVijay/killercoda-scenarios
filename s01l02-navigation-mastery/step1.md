# Step 1 — See What's Inside (ls) 👀

## Basic Listing

```bash
cd ~/workspace && ls
```{{exec}}

## Detailed View

```bash
ls -l
```{{exec}}

**What you see:** Permissions, sizes, dates, owners

---

## Human-Readable Sizes

```bash
ls -lh
```{{exec}}

**Much better!** KB, MB, GB instead of raw bytes.

---

## Reveal Hidden Files

```bash
ls -a
```{{exec}}

**New files appeared!** Files starting with `.` are hidden configs.

---

## Power Combo

```bash
ls -lah
```{{exec}}

**Everything at once:** Details + sizes + hidden files

💡 **Pro tip:** This is what most Linux experts use daily!

**Ready to move around?** →