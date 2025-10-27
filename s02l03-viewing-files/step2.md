````markdown
# Step 2 — less: Paginated viewing

The `less` command is perfect for viewing large files page by page. It's interactive!

**Creating a larger test file:**

**Task:** Create a file with many lines:

```
seq 1 100 > numbers.txt
```

**Task:** View with less:

```
less numbers.txt
```

**Navigation within less:**
- **Space** or **Page Down**: Next page
- **b** or **Page Up**: Previous page
- **q**: Quit
- **/** followed by text: Search
- **n**: Next search result
- **G**: Go to end
- **g**: Go to beginning

**Task:** Try the navigation! Search for "50":
1. Press `/`
2. Type `50`
3. Press Enter
4. Press `n` to find next occurrence
5. Press `q` to quit

**Task:** View a system log with less:

```
less /var/log/syslog
```

Navigate around, then press `q` to quit.

**When to use less:**
- ✅ Large files
- ✅ When you need to search through content
- ✅ When you want to navigate back and forth

Click **Check** after mastering less navigation.
````