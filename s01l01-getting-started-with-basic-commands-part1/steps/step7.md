# Step 7 — Get Help with Manual Pages 📚

Linux has built-in documentation for every command! The `man` command is your gateway to mastering any tool.

## What are Manual Pages?

**man** = **MAN**ual pages. They're the official documentation for every Linux command, written by the developers themselves.

---

## Basic Manual Usage

Let's look up documentation for `ls`:

```bash
man ls
```{{exec}}

**Navigation in man pages:**
- **Space** or **Page Down**: Next page
- **b** or **Page Up**: Previous page  
- **q**: Quit and return to terminal
- **/search_term**: Search for text
- **n**: Next search result

**Try it now:** Press **Space** a few times to scroll, then press **q** to exit.

---

## 🎯 Discover Command Options

Let's use man to discover new `ls` options:

```bash
man ls | grep -A2 "sort by"
```{{exec}}

Look for the `-S` option:
```bash
man ls | grep -A1 "\-S"
```{{exec}}

Now try what you learned:
```bash
cd /practice && ls -lS
```{{exec}}

---

## 📖 Other Useful Manual Commands

Check `pwd` documentation:
```bash
man pwd
```{{exec}}

Press **q** to exit, then try `mkdir`:
```bash
man mkdir
```{{exec}}

Press **q** to exit.

---

## 🔍 Quick Help with --help

Most commands also have a `--help` option for quick reference:

```bash
ls --help
```{{exec}}

```bash
mkdir --help
```{{exec}}

```bash
cd --help
```{{exec}}

---

## 🧪 Discovery Challenge

Use `man` to discover something new about a command you already know:

1. Look up `cd` manual:
```bash
man cd
```{{exec}}

Press **q** to exit.

2. Search for options in `ls` manual:
```bash
man ls | grep "human-readable"
```{{exec}}

3. Find out about file type indicators:
```bash
man ls | grep -A2 "classify"
```{{exec}}

Try the `-F` option you just discovered:
```bash
ls -F /practice
```{{exec}}

---

## 🚀 Man Page Sections

Manual pages are organized into sections:

```bash
man 1 ls    # Section 1: User commands
```{{exec}}

```bash
man 5 passwd # Section 5: File formats (try this)
```{{exec}}

Press **q** to exit.

Common sections:
- **1**: User commands (`ls`, `cd`, `mkdir`)
- **2**: System calls (programming)
- **3**: Library functions (programming)  
- **5**: File formats (`/etc/passwd`, config files)
- **8**: System administration (`mount`, `useradd`)

---

## 💡 Documentation Strategy

### When to use what:
| Need | Command | Example |
|------|---------|---------|
| Quick syntax | `command --help` | `ls --help` |
| Full documentation | `man command` | `man ls` |
| Search for commands | `apropos keyword` | `apropos "list files"` |
| Find command purpose | `whatis command` | `whatis ls` |

Try these:
```bash
whatis ls
```{{exec}}

```bash
apropos "remove"
```{{exec}}

### ✅ Key Takeaway
- **man** is your best friend - every command has documentation
- Use **--help** for quick syntax reminders
- **apropos** helps you find commands when you don't know the name
- Never hesitate to **RTFM** (Read The Fine Manual)!

**Ready to master command history?** Click **Next** to learn `history` and shortcuts!