# Step 3 — Viewing Files: cat, head, tail, less 👀

Different file viewing tools for different needs! Learn when to use each one like a pro.

## cat - See Everything

`cat` shows the **entire file content** - perfect for small files:

```bash
cd /workshop
```{{exec}}

```bash
cat configs/app.conf
```{{exec}}

Clean and simple! But what about large files?

---

## head - See the Beginning

`head` shows the **first 10 lines** by default:

```bash
cat logs/server.log
```{{exec}}

```bash
head logs/server.log
```{{exec}}

For large log files, `head` shows you the beginning. Want specific number of lines?

```bash
head -n 3 logs/server.log
```{{exec}}

Perfect for checking file headers or recent entries!

---

## tail - See the End

`tail` shows the **last 10 lines** - great for recent log entries:

```bash
tail logs/server.log
```{{exec}}

```bash
tail -n 2 logs/server.log
```{{exec}}

This is invaluable for checking the latest activity in log files!

---

## less - Navigate Large Files

`less` lets you **scroll through files** interactively:

```bash
less configs/app.conf
```{{exec}}

**Navigation in less:**
- **Space** or **Page Down**: Next page
- **b** or **Page Up**: Previous page
- **q**: Quit back to terminal
- **/search_term**: Search for text
- **n**: Next search result

**Try it:** Press **q** to exit less.

---

## Real-World File Viewing

Let's practice with the website files:

```bash
cd projects/website
```{{exec}}

```bash
ls -l
```{{exec}}

View the HTML file:
```bash
cat index.html
```{{exec}}

View the CSS file:
```bash
cat style.css
```{{exec}}

---

## Practical Example: Checking Script

```bash
cd /workshop/scripts
```{{exec}}

```bash
cat backup.sh
```{{exec}}

Perfect! You can see the entire script content.

---

## 🎯 Your Turn: Explore Different Viewing Methods

**Challenge:** Practice with your own files:

1. Go back to your learning directory:
```bash
cd ~/my-learning
```{{exec}}

2. View entire file with cat:
```bash
cat linux-commands.txt
```{{exec}}

3. View first 2 lines only:
```bash
head -n 2 linux-commands.txt
```{{exec}}

4. View last line only:
```bash
tail -n 1 linux-commands.txt
```{{exec}}

5. Open with less and search for "Day":
```bash
less linux-commands.txt
```{{exec}}

**Try this:** In less, type `/Day` and press Enter to search. Press **q** to exit.

**Expected result:** You should see how each viewing method shows different portions of your file!

---

## 💡 When to Use Each Tool

| Command | Best For | Example Use |
|---------|----------|-------------|
| `cat` | Small files, quick viewing | Config files, short scripts |
| `head` | File beginnings, headers | Log file starts, CSV headers |
| `tail` | Recent entries, file ends | Latest log entries, recent changes |
| `less` | Large files, searching | Long files, documentation |

### 🚀 Pro Tip
`tail -f filename` follows a file in real-time - amazing for watching live log files!

### ✅ Key Takeaway
Choose the right viewing tool for the job - it makes file inspection much more efficient!

**Ready to copy and move files?** Click **Next** to learn file operations!