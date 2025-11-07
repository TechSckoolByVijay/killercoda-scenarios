# Step 6 — Create & Remove Directories 🏗️

Building and managing directory structures is fundamental to organizing your work. Let's master safe directory operations!

## Creating Directories with mkdir

Move to a good practice area first:
```bash
cd /tmp
```{{exec}}

Create a simple directory:
```bash
mkdir demo
```{{exec}}

Verify it was created:
```bash
ls -la
```{{exec}}

Enter your new directory:
```bash
cd demo
```{{exec}}

```bash
pwd
```{{exec}}

---

## 🚀 Power Creation with -p Flag

The `-p` flag creates parent directories automatically (no errors if directories exist):

Go back up and create a complex structure:
```bash
cd ..
```{{exec}}

Create nested directories in one command:
```bash
mkdir -p myproject/src/components/buttons
```{{exec}}

See the entire structure:
```bash
ls -R myproject
```{{exec}}

This would fail without `-p`:
```bash
mkdir another/nested/path
```{{exec}}

But this works:
```bash
mkdir -p another/nested/path
```{{exec}}

---

## 🎯 Real-World Project Structure

Let's create a realistic project structure:

```bash
mkdir -p webapp/{src/{components,utils,styles},tests,docs,config}
```{{exec}}

Examine what we built:
```bash
tree webapp 2>/dev/null || ls -R webapp
```{{exec}}

Add some more structure:
```bash
mkdir -p webapp/src/components/{header,footer,sidebar}
```{{exec}}

```bash
ls -la webapp/src/components/
```{{exec}}

---

## 🗑️ Safe Directory Removal

**Always be careful when removing directories!**

Remove an empty directory:
```bash
rmdir demo
```{{exec}}

Verify it's gone:
```bash
ls -la | grep demo
```{{exec}}

Try to remove a non-empty directory:
```bash
rmdir webapp
```{{exec}}

`rmdir` only removes empty directories - this is a safety feature!

---

## ⚠️ Recursive Removal (Use with Caution!)

For removing directories with contents, use `rm -r`:

Create a test directory with content:
```bash
mkdir -p test/with/content
```{{exec}}

```bash
echo "test file" > test/file.txt
```{{exec}}

This fails (directory not empty):
```bash
rmdir test
```{{exec}}

This works but removes everything:
```bash
rm -r test
```{{exec}}

Verify it's gone:
```bash
ls -la | grep test
```{{exec}}

---

## 🛡️ Safety Best Practices

Let's practice safe removal:

```bash
mkdir -p safe-removal-demo/important-data
```{{exec}}

```bash
echo "important stuff" > safe-removal-demo/important-data/critical.txt
```{{exec}}

**Always check contents first:**
```bash
ls -R safe-removal-demo
```{{exec}}

**Use -i flag for interactive confirmation:**
```bash
rm -ri safe-removal-demo
```{{exec}}

When prompted, type `y` and press Enter to confirm.

---

## 💡 Directory Management Pro Tips

| Command | Purpose | Safety Level |
|---------|---------|-------------|
| `mkdir dirname` | Create directory | Safe ✅ |
| `mkdir -p path/to/dir` | Create nested path | Safe ✅ |
| `rmdir dirname` | Remove empty directory | Very Safe ✅ |
| `rm -r dirname` | Remove directory and contents | Dangerous ⚠️ |
| `rm -ri dirname` | Interactive removal | Safer ✅ |

### ✅ Key Takeaway
- Use `mkdir -p` to create complex structures easily
- Use `rmdir` for safe removal of empty directories  
- Use `rm -ri` when you need to remove directory trees
- **Always double-check** before removing directories!

**Ready to learn how to get help?** Click **Next** to explore `man` pages!