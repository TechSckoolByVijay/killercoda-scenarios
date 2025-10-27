````markdown
# Step 2 — Creating directories with mkdir

The `mkdir` command creates directories (folders).

**Basic usage:**

**Task:** Create a single directory:

```bash
mkdir myproject
```{{exec}}

**Task:** Verify it was created:

```bash
ls -l
```{{exec}}

**Task:** Create multiple directories:

```bash
mkdir docs images scripts
```{{exec}}

**Task:** Create nested directories with `-p` (parents):

```bash
mkdir -p projects/website/css
```{{exec}}

This creates the entire path even if parent directories don't exist!

**Task:** Verify the nested structure:

```bash
ls -R projects
```{{exec}}

**Task:** Create directories with spaces (use quotes):

```bash
mkdir "My Projects"
```{{exec}}

The `-p` flag is incredibly useful for creating complex directory structures in one command!

Click **Check** after creating your directories.
````