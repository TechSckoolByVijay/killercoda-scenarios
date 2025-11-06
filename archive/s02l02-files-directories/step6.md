# Step 6 — Advanced operations practice

Let's put all the file operations together in a real-world scenario!

**Scenario:** Create a project structure, organize files, and clean up.

---

### 🎯 Task — Real-world file operations

Create a project structure:

```bash
mkdir -p project/{src,tests,docs,build}
```{{exec}}

Create some project files:

```bash
touch project/src/main.py project/src/utils.py
```{{exec}}

```bash
touch project/tests/test_main.py
```{{exec}}

```bash
touch project/docs/README.md
```{{exec}}

Verify the structure:

```bash
ls -R project
```{{exec}}

Make copies for backup:

```bash
cp -r project project_backup
```{{exec}}

Organize by moving files:

```bash
echo "# My Project" > project/README.md
```{{exec}}

```bash
mv project/docs/README.md project/docs/detailed_docs.md
```{{exec}}

Copy configuration file to multiple locations:

```bash
echo "debug=true" > config.txt
```{{exec}}

```bash
cp config.txt project/src/
```{{exec}}

```bash
cp config.txt project/tests/
```{{exec}}

Clean up temporary files:

```bash
rm config.txt
```{{exec}}

Final verification:

```bash
ls -la project/*/
```{{exec}}

Great! You've used all the file operations in a realistic workflow.

Click **Check** to complete the advanced practice.