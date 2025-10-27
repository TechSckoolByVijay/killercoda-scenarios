````markdown
# Step 5 — Removing files and directories with rm

The `rm` command removes (deletes) files and directories. **Be careful - this is permanent!**

**Removing files:**

**Task:** Create a test file to delete:

```bash
touch test_delete.txt
```{{exec}}

**Task:** Remove the file:

```bash
rm test_delete.txt
```{{exec}}

**Task:** Verify it's gone:

```bash
ls test_delete.txt
```{{exec}}

**Safe deletion with confirmation:**

**Task:** Create another test file:

```bash
touch another_test.txt
```{{exec}}

**Task:** Use interactive mode for safety:

```bash
rm -i another_test.txt
```{{exec}}

Type `y` and press Enter to confirm.

**Removing directories:**

**Task:** Remove an empty directory:

```bash
rmdir "My Projects"
```{{exec}}

**Task:** Remove directory with contents (use `-r` for recursive):

```bash
rm -r archive
```{{exec}}

**SAFETY WARNINGS:**
- `rm` is permanent - no trash/recycle bin!
- Always double-check paths before using `rm -r`
- Use `rm -i` when in doubt

Click **Check** after practicing safe deletion.
````