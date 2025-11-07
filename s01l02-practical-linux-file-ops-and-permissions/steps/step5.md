# Step 5 — Deleting Files & Folders Safely 🗑️

Learn to delete files and directories safely - this power requires responsibility! Master these patterns to avoid accidents.

## 🚨 Safety First: The Golden Rules

1. **Always check what you're deleting** with `ls -l` first
2. **Start with copies or test files** 
3. **Double-check file paths** before pressing Enter
4. **Use backups** for important data

---

## Deleting Single Files with rm

Let's create test files for safe practice:

```bash
cd /workshop/temp-files
```{{exec}}

```bash
touch test1.txt test2.txt test3.txt
```{{exec}}

```bash
ls -l
```{{exec}}

Delete a single file:
```bash
rm test1.txt
```{{exec}}

```bash
ls -l
```{{exec}}

Gone! `rm` removes files **permanently** - there's no "trash bin" to recover from.

---

## Interactive Deletion (Safer)

Use `-i` flag for confirmation prompts:

```bash
rm -i test2.txt
```{{exec}}

Type `y` and press Enter when prompted. This gives you a chance to reconsider!

---

## Deleting Multiple Files

```bash
touch delete-me1.txt delete-me2.txt keep-this.txt
```{{exec}}

```bash
ls -l
```{{exec}}

Delete specific files:
```bash
rm delete-me1.txt delete-me2.txt
```{{exec}}

```bash
ls -l
```{{exec}}

Notice how `keep-this.txt` remains safe!

---

## Deleting Directories with rm -r

⚠️ **DANGER ZONE**: `rm -r` removes directories and **everything inside them**!

Create a test directory structure:
```bash
mkdir -p test-dir/subdir
```{{exec}}

```bash
echo "test content" > test-dir/file.txt
```{{exec}}

```bash
echo "nested content" > test-dir/subdir/nested.txt
```{{exec}}

```bash
ls -R test-dir/
```{{exec}}

**Always inspect first:**
```bash
ls -la test-dir/
```{{exec}}

Now remove the entire directory:
```bash
rm -r test-dir
```{{exec}}

```bash
ls -l
```{{exec}}

The entire directory tree is gone!

---

## Safe Deletion Pattern

**Professional approach:**

1. **List and verify:**
```bash
cd /workshop
```{{exec}}

```bash
ls -l temp-files/
```{{exec}}

2. **Create what you'll delete:**
```bash
mkdir temp-files/unwanted-dir
```{{exec}}

```bash
echo "temporary data" > temp-files/unwanted-dir/temp.txt
```{{exec}}

3. **Inspect before deletion:**
```bash
ls -la temp-files/unwanted-dir/
```{{exec}}

4. **Delete with confirmation:**
```bash
rm -ri temp-files/unwanted-dir
```{{exec}}

Type `y` for each prompt to confirm deletion.

---

## 🎯 Your Turn: Safe Deletion Practice

**Challenge:** Practice the safe deletion workflow:

1. Go to your learning directory:
```bash
cd ~/my-learning
```{{exec}}

2. Create test files for practice:
```bash
touch test-delete-me.txt another-test.txt
```{{exec}}

```bash
mkdir test-directory
```{{exec}}

```bash
echo "test data" > test-directory/data.txt
```{{exec}}

3. Verify what you created:
```bash
ls -l
```{{exec}}

```bash
ls -l test-directory/
```{{exec}}

4. Delete the single file safely:
```bash
rm -i test-delete-me.txt
```{{exec}}

Type `y` when prompted.

5. Delete the directory safely:
```bash
rm -ri test-directory
```{{exec}}

Type `y` for each prompt.

6. Verify deletion:
```bash
ls -l
```{{exec}}

**Expected result:** Only your original learning files should remain, test files should be gone!

---

## 💡 Deletion Safety Checklist

### ✅ Safe Practices
- Always use `ls -l` before `rm`
- Use `rm -i` for interactive confirmation
- Practice on test files first
- Keep backups of important data

### 🚨 Dangerous Patterns to Avoid
- Never use `rm -rf *` without extreme caution
- Don't delete system directories
- Avoid wildcards until you're experienced
- Never run `rm` commands you don't understand

### 📋 Professional Deletion Workflow
```bash
# 1. Inspect what will be deleted
ls -la target-directory/

# 2. Optional: backup if valuable
cp -r target-directory backup/

# 3. Delete with confirmation
rm -ri target-directory/

# 4. Verify deletion
ls -la
```

### ✅ Key Takeaway
Deletion is permanent in Linux - always verify before you remove!

**Ready to understand file permissions?** Click **Next** to learn about security!