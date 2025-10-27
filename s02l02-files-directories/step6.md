````markdown
# Step 6 — Advanced operations practice

Let's put all the file operations together in a real-world scenario!

**Scenario:** Create a project structure, organize files, and clean up.

**Task 1:** Create a project structure:

```
mkdir -p project/{src,tests,docs,build}
```

**Task 2:** Create some project files:

```
touch project/src/main.py project/src/utils.py
touch project/tests/test_main.py
touch project/docs/README.md
```

**Task 3:** Verify the structure:

```
ls -R project
```

**Task 4:** Make copies for backup:

```
cp -r project project_backup
```

**Task 5:** Organize by moving files:

```
echo "# My Project" > project/README.md
mv project/docs/README.md project/docs/detailed_docs.md
```

**Task 6:** Copy configuration file to multiple locations:

```
echo "debug=true" > config.txt
cp config.txt project/src/
cp config.txt project/tests/
```

**Task 7:** Clean up temporary files:

```
rm config.txt
```

**Task 8:** Final verification:

```
ls -la project/*/
```

Great! You've used all the file operations in a realistic workflow.

Click **Check** to complete the advanced practice.
````