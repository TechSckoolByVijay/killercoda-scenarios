# Step 1 — Master File Copying 📋

Hi there! Ready to become a file copying pro? Let's start with the most essential skill - making safe backups of your important files! 🎯

## 🔍 Question 1: Explore Your Workshop

First, let's see what files we have to work with. We'll navigate to your workshop and take a look around:

```bash
cd ~/workshop && ls -lah
```{{exec}}

**What we're doing:** Moving to your workshop directory and listing all files with details  
**What you'll see:** A variety of files and folders we've prepared for your practice - perfect for learning!

---

## 🔍 Question 2: Create Your First Backup  

Now let's make a safety copy of an important file. Think of this like saving a backup before making changes:

```bash
cp important.txt important-backup.txt
```{{exec}}

```bash
ls -lah *important*
```{{exec}}

**What we're doing:** Creating an exact duplicate of `important.txt` with a backup name  
**What you'll see:** Two files - your original is safe, and you now have a backup copy! Notice they have the same size. 🎉

---

## 🔍 Question 3: Copy to a Safe Location

Let's move that backup to a dedicated backup folder for better organization:

```bash
cp config.conf backups/
```{{exec}}

```bash
ls -lah backups/
```{{exec}}

**What we're doing:** Copying our config file to the backups directory (like having a safety vault!)  
**What you'll see:** Your config file is now safely stored in the backups folder - smart backup strategy! 🔒

Ready to learn how to organize and move files? Let's go! →

Perfect! Your lab environment is ready with projects, backup areas, and practice files.

---

## 2. Basic File Copying

Let's start by copying a single file:

```bash
cd projects/webapp
```{{exec}}

```bash
ls -lah
```{{exec}}

Now let's create a backup of our main configuration:

```bash
cp prod.config prod.config.backup
```{{exec}}

```bash
ls -lah
```{{exec}}

🎯 **Success!** You've created a backup copy. Notice the original file is still there!

---

## 3. Copy to Different Directory

Let's copy our app file to the backups directory:

```bash
cp src/app.js ../../backups/
```{{exec}}

```bash
ls -lah ../../backups/
```{{exec}}

Perfect! The file was copied to a completely different location.

---

## 4. Copy with Verbose Mode (-v)

Want to see exactly what's happening? Use the `-v` flag:

```bash
cp -v config/database.yml ../../backups/
```{{exec}}

The verbose flag shows you **exactly what was copied where** — great for verification!

---

## 5. Copy Multiple Files at Once

You can copy several files in one command:

```bash
cp dev.config test.config ../../backups/
```{{exec}}

```bash
ls -lah ../../backups/
```{{exec}}

🎯 **Batch operation complete!** Multiple files copied efficiently.

---

## 6. Copy Entire Directories (-r)

For directories, you need the **recursive** flag `-r`:

```bash
cp -r docs ../../backups/
```{{exec}}

```bash
ls -lah ../../backups/
```{{exec}}

```bash
ls -lah ../../backups/docs/
```{{exec}}

**Amazing!** The entire directory structure was copied, including all files inside!

---

## 7. Copy with Preservation (-p)

Want to keep original timestamps and permissions? Use `-p`:

```bash
cp -rp src ../../backups/webapp-src
```{{exec}}

```bash
ls -lah ../../backups/
```{{exec}}

The `-p` flag **preserves** file attributes — essential for proper backups!

---

## 8. Professional Backup Workflow

Let's create a complete project backup:

```bash
cd ~/file-ops-lab
```{{exec}}

```bash
cp -rv projects/webapp backups/webapp-backup-$(date +%Y%m%d)
```{{exec}}

```bash
ls -lah backups/
```{{exec}}

🎯 **Professional backup created!** Complete with timestamp for version control.

---

## 9. Copy with Rename

You can copy and rename in one operation:

```bash
cp projects/webapp/src/app.js backups/main-application.js
```{{exec}}

```bash
ls -lah backups/
```{{exec}}

Perfect for creating **descriptively named backups**!

---

## 🎯 Copy Command Summary

### Basic Copy Operations
- `cp file1 file2` → Copy and rename file
- `cp file directory/` → Copy file to directory
- `cp file1 file2 file3 directory/` → Copy multiple files

### Advanced Copy Options
- `cp -r directory target/` → Copy directories recursively
- `cp -v files target/` → Verbose output (show what's copied)
- `cp -p files target/` → Preserve timestamps and permissions
- `cp -rv source/ backup/` → Recursive + verbose (best for directories)

## 💡 Real-World Usage

### Development Workflows
- **Code backups:** `cp -r project/ backups/project-$(date +%Y%m%d)/`
- **Config safety:** `cp config.yml config.yml.backup`
- **Template creation:** `cp -r template/ new-project/`

### System Administration
- **Configuration backups:** `cp /etc/nginx/nginx.conf /backup/`
- **Log archiving:** `cp -r /var/log/ /archive/logs-$(date +%Y%m%d)/`
- **User data backup:** `cp -rp /home/user/ /backup/users/`

## 🔒 Safety First!

**Remember:** `cp` creates **duplicates** — it doesn't move or delete the original. This makes it **very safe** for creating backups and preserving important data!

Ready to learn how to **move and rename** files efficiently? Click **Next**!