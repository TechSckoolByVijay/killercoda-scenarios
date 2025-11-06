# Step 1 — Copy & Backup (cp) 📋

## Setup Practice Environment

```bash
cd ~/file-ops-lab && ls -lah
```{{exec}}

## Basic File Copy

```bash
cp sample.txt sample-backup.txt
```{{exec}}

```bash
ls -la *.txt
```{{exec}}

**Perfect!** Original safe, backup created.

---

## Copy to Directory

```bash
cp important.conf backups/
```{{exec}}

```bash
ls backups/
```{{exec}}

**Smart backup!** Important files in dedicated folder.

---

## Copy with New Name

```bash
cp data.log backups/data-$(date +%Y%m%d).log
```{{exec}}

```bash
ls backups/
```{{exec}}

**Timestamped backup!** Never lose track of versions.

---

## Copy Entire Directory

```bash
cp -r projects/ projects-backup/
```{{exec}}

```bash
ls -la projects*
```{{exec}}

**Recursive copy!** `-r` handles entire directory trees.

---

## Multiple Files at Once

```bash
cp *.txt documents/
```{{exec}}

```bash
ls documents/
```{{exec}}

💡 **Safety first:** Always backup before major changes!

**Ready to move and organize?** →

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