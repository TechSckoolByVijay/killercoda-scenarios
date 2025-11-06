# Step 2 — Move & Organize Files 🚚

Welcome back! Now let's learn how to move and rename files like a pro. Think of `mv` as your digital moving truck - it relocates files to new homes! 🏠

## 🔍 Question 1: Give Files Better Names

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

## 🔍 Question 2: Relocate Files to Better Locations

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

## 🔍 Question 3: Organize Multiple Files at Once

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

## Move Between Directories

```bash
mv monthly-report.txt documents/
```{{exec}}

```bash
ls documents/
```{{exec}}

**File relocated!** mv moves (doesn't copy) the file.

---

## Move and Rename Together

```bash
mv data.csv archives/backup-data.csv
```{{exec}}

```bash
ls archives/
```{{exec}}

**Two actions in one!** New location AND new name.

---

## Move Multiple Files

```bash
mv *.tmp temp/
```{{exec}}

```bash
ls temp/
```{{exec}}

**Batch move!** All .tmp files organized into temp directory.

---

## Organize Directory Structure

```bash
mkdir -p organized/{scripts,configs,logs}
```{{exec}}

```bash
mv *.sh organized/scripts/
mv *.conf organized/configs/  
mv *.log organized/logs/
```{{exec}}

```bash
ls organized/*/
```{{exec}}

**Professional organization!** Files sorted by type automatically.

💡 **Key difference:** mv removes from original location (unlike cp)

**Ready for safe file deletion?** →

Let's start by renaming a file. First, let's see what we have:

```bash
cd ~/file-ops-lab/projects/webapp
```{{exec}}

```bash
ls -lah
```{{exec}}

Now let's rename our backup config file:

```bash
mv prod.config.backup production-backup.config
```{{exec}}

```bash
ls -lah
```{{exec}}

🎯 **File renamed!** Notice the original file is **gone** — it was moved to the new name.

---

## 2. Move Files Between Directories

Let's move our config files to the config directory where they belong:

```bash
mv dev.config config/development.config
```{{exec}}

```bash
mv test.config config/testing.config
```{{exec}}

```bash
ls -lah
```{{exec}}

```bash
ls -lah config/
```{{exec}}

Perfect! Files were **moved and renamed** in one operation!

---

## 3. Move Multiple Files

You can move several files at once:

```bash
cd ~/file-ops-lab
```{{exec}}

Let's organize our temp files:

```bash
ls -lah temp/
```{{exec}}

```bash
mv temp/*.cache temp/*.log archive/
```{{exec}}

```bash
ls -lah archive/
```{{exec}}

```bash
ls -lah temp/
```{{exec}}

Great! Multiple files moved efficiently to organize our workspace.

---

## 4. Move and Rename Directories

Let's reorganize our project structure:

```bash
ls -lah projects/
```{{exec}}

```bash
mv projects/mobile-app projects/mobile-application
```{{exec}}

```bash
ls -lah projects/
```{{exec}}

🎯 **Entire directory renamed!** This is incredibly useful for project organization.

---

## 5. Move Files with Pattern Matching

Let's move all script files to a better location:

```bash
cd projects
```{{exec}}

```bash
ls -lah scripts/
```{{exec}}

```bash
mv scripts/*.sh webapp/
```{{exec}}

```bash
mv scripts/*.py mobile-application/
```{{exec}}

```bash
ls -lah webapp/
```{{exec}}

```bash
ls -lah mobile-application/
```{{exec}}

Excellent! Files moved based on their **file extensions**.

---

## 6. Organize Project Structure

Let's create a more logical project organization:

```bash
cd ~/file-ops-lab
```{{exec}}

```bash
mkdir -p projects/webapp/scripts
```{{exec}}

```bash
mv projects/webapp/*.sh projects/webapp/scripts/
```{{exec}}

```bash
ls -lah projects/webapp/scripts/
```{{exec}}

Perfect! Now our scripts are properly organized.

---

## 7. Cleanup and Reorganization

Let's clean up our temp directory by moving useful files:

```bash
ls -lah temp/
```{{exec}}

```bash
mv temp/uploads/*.txt archive/
```{{exec}}

```bash
ls -lah archive/
```{{exec}}

Great! Files moved from temp storage to permanent archive.

---

## 8. Professional Workflow Example

Let's simulate a real-world project organization task:

```bash
# Create proper directory structure
mkdir -p projects/webapp/{assets,public,private}
```{{exec}}

```bash
# Move files to appropriate locations
mv projects/webapp/production-backup.config projects/webapp/private/
```{{exec}}

```bash
ls -lah projects/webapp/private/
```{{exec}}

🎯 **Professional organization complete!** Sensitive files moved to private directory.

---

## 9. Batch Organization with mv

Let's organize all our configuration files:

```bash
cd projects/webapp/config
```{{exec}}

```bash
ls -lah
```{{exec}}

```bash
# Move all .yml files to a subdirectory
mkdir -p yaml-configs
```{{exec}}

```bash
mv *.yml yaml-configs/
```{{exec}}

```bash
ls -lah yaml-configs/
```{{exec}}

Perfect! All YAML configuration files are now organized together.

---

## 🎯 Move Command Summary

### Basic Move/Rename Operations
- `mv oldname newname` → Rename file or directory
- `mv file directory/` → Move file to directory
- `mv file1 file2 file3 directory/` → Move multiple files

### Advanced Organization
- `mv *.txt documents/` → Move by file pattern
- `mv dir1/ dir2/newname/` → Move and rename directory
- `mv path/file .` → Move file to current directory

## 💡 Key Differences: cp vs mv

### Copy (cp)
- **Creates duplicates** — original stays
- **Safe for backups** — no data loss risk
- **Disk space usage** — requires space for copies

### Move (mv)
- **Relocates files** — original disappears
- **Efficient organization** — no disk space duplication
- **Rename capability** — same command for both operations

## 🔧 Real-World Scenarios

### Project Organization
- **Rename releases:** `mv v1.0/ release-1.0/`
- **Organize by type:** `mv *.css assets/styles/`
- **Clean up downloads:** `mv ~/Downloads/*.pdf ~/Documents/`

### System Administration
- **Log rotation:** `mv current.log archived-$(date +%Y%m%d).log`
- **Config updates:** `mv nginx.conf nginx.conf.old`
- **User management:** `mv /home/olduser/ /home/newuser/`

## ⚠️ Important Safety Note

**Remember:** `mv` **removes** the original file/directory from its old location. Always double-check your command before hitting Enter, especially when moving important files!

Ready to learn **safe deletion practices** and **powerful file finding** techniques? Click **Next**!