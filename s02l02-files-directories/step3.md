````markdown
# Step 3 — Copying files with cp

The `cp` command copies files and directories.

**Basic file copying:**

**Task:** First, let's create a file with some content:

```
echo "Hello World" > source.txt
```{{exec}}

**Task:** Copy the file:

```
cp source.txt backup.txt
```{{exec}}

**Task:** Verify both files exist:

```
ls -l *.txt
```{{exec}}

**Task:** Copy to a different directory:

```
cp source.txt myproject/
```{{exec}}

**Task:** Copy with a new name:

```
cp source.txt myproject/renamed.txt
```{{exec}}

**Task:** Copy directories (use `-r` for recursive):

```
cp -r myproject myproject_backup
```{{exec}}

**Task:** Copy multiple files to a directory:

```
cp file1.txt file2.txt file3.txt docs/
```{{exec}}

**Important:** Use `-r` (recursive) when copying directories!

Click **Check** after practicing file copying.
````


