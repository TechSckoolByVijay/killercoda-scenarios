````markdown
# Step 6 — Navigation practice

Time to put it all together with a navigation challenge!

**Challenge:** Navigate through the filesystem and explore!

**Task 1:** Start by checking where you are and what's here:

```bash
pwd
```{{exec}}

```bash
ls -la
```{{exec}}

**Task 2:** Navigate to root and explore:

```bash
cd /
```{{exec}}

```bash
ls
```{{exec}}

**Task 3:** Go to /var/log and see what's there:

```bash
cd var/log
```{{exec}}

```bash
ls -lt
```{{exec}}

**Task 4:** Go back to root using the shortest path:

```bash
cd /
```{{exec}}

**Task 5:** Go to /etc and list configuration files:

```bash
cd etc
```{{exec}}

```bash
ls | head -10
```{{exec}}

**Task 6:** Return home and verify:

```bash
cd
```{{exec}}

```bash
pwd
```{{exec}}

**Task 7:** Show off your skills - use one command to list your home directory from anywhere:

```bash
ls -la ~
```{{exec}}

Perfect! You can now navigate confidently through the Linux filesystem.

Click **Check** to complete the navigation mastery.
````