````markdown
# Step 1 — pwd: Where am I?

The `pwd` command stands for "Print Working Directory". It tells you exactly where you are in the filesystem.

**Why it's important:**
- Linux doesn't show your current path in the prompt by default
- Essential for understanding relative vs absolute paths
- Helps you orient yourself when navigating

**Task:** Let's see where you currently are:

```bash
pwd
```{{exec}}

You should see something like `/root` or `/home/username`. This is your current location in the filesystem tree.

**Task:** Remember this location! Now let's try going somewhere else and coming back:

```bash
cd /
```{{exec}}

```bash
pwd
```{{exec}}

Notice how your location changed to the root directory!

Click **Check** after running both commands.
````