````markdown
# Step 3 — Copying files with cp

The `cp` command copies files and directories.

**Basic file copying:**

**Task:** First, let's create a file with some content:

```bash
echo "Hello World" > source.txt
```{{exec}}

**Task:** Copy the file:

```bash
cp source.txt backup.txt
```{{exec}}

**Task:** Verify both files exist:

```bash
ls -l *.txt
```{{exec}}

**Task:** Copy to a different directory:

```bash
cp source.txt myproject/
```{{exec}}

**Task:** Copy with a new name:

```bash
cp source.txt myproject/renamed.txt
```{{exec}}

**Task:** Copy directories (use `-r` for recursive):

```bash
cp -r myproject myproject_backup
```{{exec}}

**Task:** Copy multiple files to a directory:

```bash
cp file1.txt file2.txt file3.txt docs/
```{{exec}}

**Important:** Use `-r` (recursive) when copying directories!

Click **Check** after practicing file copying.
````