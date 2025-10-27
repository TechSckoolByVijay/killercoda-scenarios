````markdown
# Step 6 — Advanced operations practice

Let's put all the file operations together in a real-world scenario!

**Scenario:** Create a project structure, organize files, and clean up.

**Task 1:** Create a project structure:

```bash
mkdir -p project/{src,tests,docs,build}
```{{exec}}

**Task 2:** Create some project files:

```bash
touch project/src/main.py project/src/utils.py
```{{exec}}

```bash
touch project/tests/test_main.py
```{{exec}}

```bash
touch project/docs/README.md
```{{exec}}

**Task 3:** Verify the structure:

```bash
ls -R project
```{{exec}}

**Task 4:** Make copies for backup:

```bash
cp -r project project_backup
```{{exec}}

**Task 5:** Organize by moving files:

```bash
echo "# My Project" > project/README.md
```{{exec}}

```bash
mv project/docs/README.md project/docs/detailed_docs.md
```{{exec}}

**Task 6:** Copy configuration file to multiple locations:

```bash
echo "debug=true" > config.txt
```{{exec}}

```bash
cp config.txt project/src/
```{{exec}}

```bash
cp config.txt project/tests/
```{{exec}}

**Task 7:** Clean up temporary files:

```bash
rm config.txt
```{{exec}}

**Task 8:** Final verification:

```bash
ls -la project/*/
```{{exec}}

Great! You've used all the file operations in a realistic workflow.

Click **Check** to complete the advanced practice.
````