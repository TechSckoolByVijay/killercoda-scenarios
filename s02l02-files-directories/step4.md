# Step 4 — Moving/Renaming with mv

The `mv` command both moves files and renames them. It's the same operation!

---

### 🔀 Task — Master moving and renaming

Rename a file:

```bash
mv backup.txt backup_copy.txt
```{{exec}}

Verify the rename:

```bash
ls -l *backup*
```{{exec}}

Move a file to a directory:

```bash
mv backup_copy.txt docs/
```{{exec}}

Move and rename simultaneously:

```bash
mv source.txt images/original.txt
```{{exec}}

Rename a directory:

```bash
mv myproject_backup archive
```{{exec}}

Move multiple files:

```bash
mv file1.txt file2.txt scripts/
```{{exec}}

**Key insight:** Unlike `cp`, `mv` doesn't create copies - it actually moves the files! The original location no longer has the file.

**Safety tip:** Use `mv -i` for interactive mode to confirm overwrites!

Click **Check** after practicing moves and renames.


