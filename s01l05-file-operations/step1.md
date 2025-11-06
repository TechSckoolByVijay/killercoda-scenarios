# Step 1 — Master File Copying 📋

Hi there! Ready to become a file copying pro? Let's start with the most essential skill - making safe backups of your important files! 🎯

## � Practice Exercise 1: Explore Your Workshop

First, let's see what files we have to work with. We'll navigate to your workshop and take a look around:

```bash
cd ~/workshop && ls -lah
```{{exec}}

**What we're doing:** Moving to your workshop directory and listing all files with details  
**What you'll see:** A variety of files and folders we've prepared for your practice - perfect for learning!

---

## � Practice Exercise 2: Create Your First Backup  

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

## � Practice Exercise 3: Copy to a Safe Location

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

