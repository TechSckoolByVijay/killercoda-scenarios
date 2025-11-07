# Step 1 — Find Your Location: pwd 📍

Every journey starts with knowing where you are! In Linux, you're always "somewhere" in the filesystem tree.

## What is pwd?

**pwd** = **P**rint **W**orking **D**irectory. It's like asking "Where am I?" and getting the full address.

---

## Try It Now!

Let's see your current location:

```bash
pwd
```{{exec}}

You should see something like `/root` or `/home/username`. This is your **absolute path** - the complete address from the root (`/`) of the filesystem.

---

## 🎯 Mini Challenge: Explore Different Locations

Let's move around and check our location each time:

First, go to the practice directory:
```bash
cd /practice
```{{exec}}

Now check where you are:
```bash
pwd
```{{exec}}

Move to the documents folder:
```bash
cd documents  
```{{exec}}

Check location again:
```bash
pwd
```{{exec}}

Go back to your home directory:
```bash
cd ~
```{{exec}}

One more location check:
```bash
pwd
```{{exec}}

---

## 🔍 What You Observed

Notice how `pwd` always shows your **full path**:
- `/practice` - You were at the practice directory
- `/practice/documents` - Inside the documents subfolder  
- `/root` (or similar) - Back to your home directory

---

## 💡 Real-World Usage

**pwd** is essential when:
- You get lost in deep directory structures
- Writing scripts that need to know current location
- Debugging path-related issues
- Sharing your location with teammates

### ✅ Key Takeaway
`pwd` is your GPS for the Linux filesystem - it always tells you exactly where you are!

**Ready to discover who you are?** Click **Next** to learn about `whoami`!