# Step 2 — Creating directories with mkdir

The `mkdir` command creates directories (folders).

---

### 📁 Task — Create directories with mkdir

Create a single directory:

```bash
mkdir myproject
```{{exec}}

Verify it was created:

```bash
ls -l
```{{exec}}

Create multiple directories:

```bash
mkdir docs images scripts
```{{exec}}

Create nested directories with `-p` (parents):

```bash
mkdir -p projects/website/css
```{{exec}}

This creates the entire path even if parent directories don't exist!

Verify the nested structure:

```bash
ls -R projects
```{{exec}}

Create directories with spaces (use quotes):

```bash
mkdir "My Projects"
```{{exec}}

The `-p` flag is incredibly useful for creating complex directory structures in one command!

Click **Check** after creating your directories.


