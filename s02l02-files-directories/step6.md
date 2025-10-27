````markdown
# Step 6 — Advanced operations practice

Let's put all the file operations together in a real-world scenario!

**Scenario:** Create a project structure, organize files, and clean up.

**Task 1:** Create a project structure:

```
mkdir -p project/{src,tests,docs,build}
```{{exec}}

**Task 2:** Create some project files:

```
touch project/src/main.py project/src/utils.py
```{{exec}}

```
touch project/tests/test_main.py
```{{exec}}

```
touch project/docs/README.md
```{{exec}}

**Task 3:** Verify the structure:

```
ls -R project
```{{exec}}

**Task 4:** Make copies for backup:

```
cp -r project project_backup
```{{exec}}

**Task 5:** Organize by moving files:

```
echo "# My Project" > project/README.md
```{{exec}}

```
mv project/docs/README.md project/docs/detailed_docs.md
```{{exec}}

**Task 6:** Copy configuration file to multiple locations:

```
echo "debug=true" > config.txt
```{{exec}}

```
cp config.txt project/src/
```{{exec}}

```
cp config.txt project/tests/
```{{exec}}

**Task 7:** Clean up temporary files:

```
rm config.txt
```{{exec}}

**Task 8:** Final verification:

```
ls -la project/*/
```{{exec}}

Great! You've used all the file operations in a realistic workflow.

Click **Check** to complete the advanced practice.
````


