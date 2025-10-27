````markdown
# Step 1 — Creating files with touch

The `touch` command is the fastest way to create empty files in Linux.

**Why use touch?**
- Creates empty files instantly
- Updates timestamps of existing files
- Perfect for placeholder files and testing

**Task:** Let's create some files:

```bash
touch myfile.txt
```{{exec}}

**Task:** Create multiple files at once:

```bash
touch file1.txt file2.txt file3.txt
```{{exec}}

**Task:** Verify the files were created:

```bash
ls -l
```{{exec}}

**Task:** Create a file with a space in the name (use quotes):

```bash
touch "my document.txt"
```{{exec}}

**Pro tip:** Touch can also update the modification time of existing files without changing their content!

Click **Check** after creating your files.
````