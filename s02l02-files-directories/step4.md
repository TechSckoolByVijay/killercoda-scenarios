````markdown
# Step 4 — Moving/Renaming with mv

The `mv` command both moves files and renames them. It's the same operation!

**Renaming files:**

**Task:** Rename a file:

```
mv backup.txt backup_copy.txt
```

**Task:** Verify the rename:

```
ls -l *backup*
```

**Moving files:**

**Task:** Move a file to a directory:

```
mv backup_copy.txt docs/
```

**Task:** Move and rename simultaneously:

```
mv source.txt images/original.txt
```

**Moving directories:**

**Task:** Rename a directory:

```
mv myproject_backup archive
```

**Task:** Move multiple files:

```
mv file1.txt file2.txt scripts/
```

**Key insight:** Unlike `cp`, `mv` doesn't create copies - it actually moves the files! The original location no longer has the file.

**Safety tip:** Use `mv -i` for interactive mode to confirm overwrites!

Click **Check** after practicing moves and renames.
````