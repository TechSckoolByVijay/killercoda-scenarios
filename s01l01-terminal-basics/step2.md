# Step 2 — Who Am I? (whoami) 👤

Great job learning `pwd`! Now let's answer another fundamental question: **Who am I in this Linux system?**

## The whoami Command

Linux is a multi-user system. Multiple people can use the same computer with different accounts and permissions.

The `whoami` command tells you **which user account you're currently using**.

---

## 1. Discover Your Identity

Let's find out who you are in Linux:

```bash
whoami
```{{exec}}

🎯 **What happened?** Linux just told you your username!

---

## 2. Why This Matters

You might see something like `root` or your username. This is important because:

- **Different users have different permissions**
- Some commands only work for certain users
- Files and folders can belong to specific users
- Your identity determines what you can and cannot do

---

## 3. Practice Both Commands Together

Let's combine what we've learned so far:

```bash
pwd
```{{exec}}

```bash
whoami
```{{exec}}

Now you know **WHERE** you are AND **WHO** you are! 🎯

---

## 🎯 Real-World Analogy

Think of `whoami` like showing your **ID card**:
- In Linux, your username is your identity
- Different users might have access to different areas
- Sometimes you need to know "which hat you're wearing"
- Essential when working with servers that have multiple users

---

## 💡 Daily Usage

Imagine you're working on a server with multiple accounts:
- `whoami` → Returns: `john`
- Later you switch to admin: `whoami` → Returns: `admin`
- Always good to double-check your current identity!

---

## ✅ Progress Check

You now know:
- `pwd` - **Where am I?**
- `whoami` - **Who am I?**

Ready to learn how to **clean up your workspace**? Click **Next**!