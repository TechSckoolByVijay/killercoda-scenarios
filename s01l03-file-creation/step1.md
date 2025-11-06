# Step 1 — Create Files & Folders (touch, mkdir) 📁

## Setup Your Workspace

```bash
cd ~/workshop && ls -lah
```{{exec}}

## Create Files

```bash
touch notes.txt todo.txt
```{{exec}}

```bash
ls -lah
```{{exec}}

**Notice:** File size = 0 bytes (empty files)

---

## Create Directories

```bash
mkdir projects documents scripts
```{{exec}}

```bash
ls -lah
```{{exec}}

**See the `d`?** That marks directories!

---

## Nested Structure Magic

```bash
mkdir -p dev/{frontend,backend}/{src,tests,config}
```{{exec}}

```bash
ls -R dev
```{{exec}}

**One command = entire project structure!**

---

## Add Content & Verify

```bash
echo "Linux learning journey begins!" > notes.txt
```{{exec}}

```bash
echo "Master file operations" > todo.txt
```{{exec}}

```bash
ls -lah *.txt
```{{exec}}

💡 **Pro tip:** `mkdir -p` creates parent directories automatically

**Ready to read your creations?** →