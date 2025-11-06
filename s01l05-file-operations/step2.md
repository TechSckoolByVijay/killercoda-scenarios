# Step 2 — Move & Organize Files 🚚

Welcome back! Now let's learn how to move and rename files like a pro. Think of `mv` as your digital moving truck - it relocates files to new homes! 🏠

## � Practice Exercise 1: Give Files Better Names

Let's start by renaming a file to be more descriptive. Good naming saves you time later when searching for files:

```bash
mv old-name.txt monthly-report.txt
```{{exec}}

```bash
ls -lah *report*
```{{exec}}

**What we're doing:** Renaming a file to be more descriptive and professional  
**What you'll see:** The file now has a clear name that tells you exactly what it contains! 📝

---

## � Practice Exercise 2: Relocate Files to Better Locations

Now let's move a file to a more appropriate directory. This is like filing a document in the right folder:

```bash
mv data.csv archives/
```{{exec}}

```bash
ls archives/
```{{exec}}

**What we're doing:** Moving the CSV file to the archives directory where it belongs  
**What you'll see:** The file disappears from current location and appears in archives/ - it's been relocated! 🚚

---

## � Practice Exercise 3: Organize Multiple Files at Once

Time for some batch organization! Let's move all script files to a dedicated scripts folder:

```bash
mv *.sh scripts/
```{{exec}}

```bash
ls scripts/
```{{exec}}

**What we're doing:** Moving ALL `.sh` script files to the scripts directory in one command  
**What you'll see:** All your script files are now perfectly organized in one place - much cleaner! 🗂️

Ready to learn safe file deletion and powerful file searching? Let's master cleanup techniques! →

