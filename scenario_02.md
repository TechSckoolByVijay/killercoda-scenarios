# Objective:
Create a KillerKoda interactive scenario titled:
s01l02-practical-linux-file-ops-and-permissions

# Target Audience:
Beginner Linux + DevOps learners who have just completed basic navigation commands (pwd, cd, ls). 
Focus here is hands-on understanding of real-world file handling and safe operations.

# Scenario Theme / UX Goal:
Learners should *actively manipulate* files, watch output change, and feel confident handling logs and project files.
Tasks must be realistic, sequential, friendly, and confidence-building.
No new commands should be introduced beyond the list below.

# Allowed Commands Only:
touch
echo "text" > file
echo "text" >> file
cat
head, head -n
tail, tail -n, tail -f
less
cp, cp -r
mv
rm
rm -r (⚠️ include warnings and safe patterns)
ls -l (permission awareness)
chmod (basic: chmod +x, chmod 644)
chown (basic usage, explanation only)
(No new commands should appear!)

# Scenario Layout:
- Single Linux container environment.
- Steps stored in `steps/` folder.
- Each step must include:
  * A short, encouraging explanation
  * The commands to run
  * Expected result shown in plain language
  * One small learner challenge (“Now you try…”) 
  * Optional tiny validation check

# Step Outline:

## Step 1: Create Files with touch
Create multiple empty files.
Show with ls -l.
Mini-task: Create your own file.

## Step 2: Writing & Appending Text
echo "text" > file.txt
echo "text" >> file.txt
Mini-task: Add 2 new lines to same file & view with cat.

## Step 3: Viewing Files: cat, head, tail, tail -f, less
Explain why different tools exist.
Mini-task: "Open file with less and search for a word using /"

## Step 4: Copying & Moving Files
cp file1 copy.txt
mv copy.txt moved.txt
Mini-task: Move a file into a new directory you create.

## Step 5: Deleting Files & Folders Safely
rm file
rm -r directory (⚠️ add strong caution guidance)
Mini-task: Create → copy → delete → verify deletion using ls.

## Step 6: Permissions 101
ls -l explanation (r w x for owner/group/others).
chmod +x script.sh
chmod 644 notes.txt
Mini-task: Create a script file and make it executable.

## Step 7: Ownership Basics (chown)
Show who currently owns file.
Show change example (but do NOT require sudo).
Explain concept only; do a read-only demonstration if environment restricted.

# Style:
- Friendly tone (“Nice! You did that like a pro.”).
- Steps should feel like a guided workshop.
- No heavy theory — learning by doing.
- Keep each step under 120 words.
- Encourage curiosity.

# Output Expected:
1. scenario.yml
2. index.json
3. steps/step1.md, step2.md, … (corresponding to step outline)

Make sure scenario is consistent, beginner-safe, and fun.
wwww