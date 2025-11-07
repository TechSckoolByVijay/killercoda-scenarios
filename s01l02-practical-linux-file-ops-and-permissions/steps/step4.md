# Step 4 — Copying & Moving Files 📋

Master `cp` and `mv` - the essential file management commands that every Linux user needs daily!

## Copying Files with cp

`cp` creates **duplicates** - original stays, copy is created:

```bash
cd /workshop/playground
```{{exec}}

```bash
ls -l
```{{exec}}

Copy a file:
```bash
cp sample.txt sample-backup.txt
```{{exec}}

```bash
ls -l
```{{exec}}

Both files exist! Let's verify they have the same content:
```bash
cat sample.txt
```{{exec}}

```bash
cat sample-backup.txt
```{{exec}}

Perfect! The copy is identical.

---

## Copying to Different Locations

Copy to another directory:
```bash
cp readme.txt /workshop/projects/
```{{exec}}

Verify it was copied:
```bash
ls -l /workshop/projects/
```{{exec}}

The original is still here:
```bash
ls -l readme.txt
```{{exec}}

---

## Copying Directories with cp -r

The `-r` flag copies entire directories **recursively**:

```bash
cd /workshop
```{{exec}}

```bash
cp -r projects projects-backup
```{{exec}}

```bash
ls -l
```{{exec}}

Check the backup contains everything:
```bash
ls -l projects-backup/
```{{exec}}

```bash
ls -l projects-backup/website/
```{{exec}}

Amazing! The entire directory structure was copied.

---

## Moving Files with mv

`mv` **relocates** files - original disappears, file appears in new location:

```bash
cd playground
```{{exec}}

```bash
mv sample-backup.txt renamed-sample.txt
```{{exec}}

```bash
ls -l
```{{exec}}

The file was **renamed**! `mv` can rename and move in one operation.

Move to different directory:
```bash
mv renamed-sample.txt /workshop/configs/
```{{exec}}

```bash
ls -l /workshop/configs/
```{{exec}}

The file is now in configs directory and no longer in playground!

---

## Moving Directories

```bash
cd /workshop
```{{exec}}

Create a temporary directory:
```bash
mkdir temp-files
```{{exec}}

```bash
mv playground/hello.sh temp-files/
```{{exec}}

```bash
ls -l temp-files/
```{{exec}}

```bash
ls -l playground/
```{{exec}}

The script moved from playground to temp-files!

---

## 🎯 Your Turn: Organize Your Files

**Challenge:** Practice copying and moving with your learning files:

1. Go to your learning directory:
```bash
cd ~/my-learning
```{{exec}}

2. Create a backup directory:
```bash
mkdir backup
```{{exec}}

3. Copy important files to backup:
```bash
cp linux-commands.txt backup/
```{{exec}}

```bash
cp favorite-resources.txt backup/
```{{exec}}

4. Verify backup:
```bash
ls -l backup/
```{{exec}}

5. Create an archive directory and move old logs:
```bash
mkdir archive
```{{exec}}

```bash
mv app.log archive/
```{{exec}}

6. Check your organization:
```bash
ls -l
```{{exec}}

```bash
ls -l archive/
```{{exec}}

**Expected result:** You should have organized files into backup and archive directories!

---

## 💡 cp vs mv Summary

| Command | Action | Original File | Use Case |
|---------|--------|---------------|----------|
| `cp` | **Copies** | Remains | Backups, duplicates |
| `mv` | **Moves/Renames** | Disappears | Organization, renaming |

### 🚨 Important Notes
- `cp -r` copies directories recursively
- `mv` works on both files and directories
- Always use `ls -l` to verify your operations
- `mv` is also used for renaming (same location, new name)

### ✅ Key Takeaway
`cp` duplicates, `mv` relocates - master both for efficient file management!

**Ready to learn safe deletion?** Click **Next** to handle file removal safely!