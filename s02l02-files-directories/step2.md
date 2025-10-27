````markdown
# Step 2 — Creating directories with mkdir

The `mkdir` command creates directories (folders).

**Basic usage:**

**Task:** Create a single directory:

```
mkdir myproject
```

**Task:** Verify it was created:

```
ls -l
```

**Task:** Create multiple directories:

```
mkdir docs images scripts
```

**Task:** Create nested directories with `-p` (parents):

```
mkdir -p projects/website/css
```

This creates the entire path even if parent directories don't exist!

**Task:** Verify the nested structure:

```
ls -R projects
```

**Task:** Create directories with spaces (use quotes):

```
mkdir "My Projects"
```

The `-p` flag is incredibly useful for creating complex directory structures in one command!

Click **Check** after creating your directories.
````