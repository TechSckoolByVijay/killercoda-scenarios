# Step 2 — Who Am I? (whoami)

Time for some digital identity! 🆔

Now that you know **where** you are, let's find out **who** you are in the Linux world.

## The Command: whoami

```bash
whoami; echo "step2_done" > /tmp/step2_done
```{{exec}}

---

### 🤔 What This Does

Linux will reply with your username. Simple, but important - because sometimes you might have multiple users on a server, and this command reminds you **which hat you're wearing**.

### 🎯 What You'll See

You'll probably see:
```
root
```

This means you're logged in as the `root` user - the superuser with maximum privileges!

### 🧭 Real-World Analogy

Think of `whoami` as your **ID card in the Linux world**. Just like at an office building, you need to know who you are before accessing different areas.

### 💡 Why This Matters

- **Security**: Know your privilege level
- **File Permissions**: Understand what you can/cannot access
- **Multi-User Systems**: Avoid confusion on shared servers
- **Scripting**: Write scripts that behave differently for different users

**Your Task:** Run the `whoami` command and discover your Linux identity!

Click **Check** when you've executed the command.