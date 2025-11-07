
# Learn scenario syntax from linux-cli-warmup, already present in current repo. 


# Objective:
Create a KillerKoda interactive scenario titled:
s01l01-getting-started-with-basic-commands-part1

# Target Audience:
Beginners in Linux and DevOps. The focus is to build comfort and confidence in navigating and understanding the terminal.

# Scenario Theme / UX Goal:
This scenario should feel friendly, engaging, and practical. 
Each task should be short, clear, and give immediate visual feedback in the terminal.
Do not overwhelm learners with theory; teach by doing.
We want value-add hints, simple explanations, and small mini-challenges.

# Scenario Layout:
- 1 environment: Ubuntu or Alpine container (any standard Linux base).
- The scenario consists of sequential steps in `steps/` folder.
- Each step should include:
  * a short explanation
  * the command(s) to run
  * expected output
  * a mini task for the learner (e.g. “Now try changing to the parent directory using cd ..”)
  * a small validation check (where relevant)

# Commands to Cover:
pwd
whoami
uname -a
ls, ls -l, ls -la, ls -ltr, ls -R
cd, cd .., cd -, cd ~
mkdir, mkdir -p
rmdir, rm -r
man, man ls, man pwd
history, history | grep <term>, !<number>
Command chaining: &&, ;, &
jobs
clear

# Additional Practice Variants (Do NOT introduce new commands — only expand usage):
- Let user explore listing hidden files with ls -a
- Let user compare ls outputs with different switches
- Let user create nested directories using mkdir -p myproject/src/app/logs
- Let user remove directories carefully and discuss safe deletion
- Let user use man to discover flags themselves
- Let user re-run a historical command using history and !number
- Let user run long-running dummy process in background: sleep 5 &
- Let user foreground job: fg

# Task Flow:

## Step 1: Welcome + `pwd`
Explain what a filesystem location is.
Command to run: pwd
Mini task: Ask user to move around using cd and then confirm with pwd.

## Step 2: `whoami` + multi-user idea
Explain multi-user role and permissions context.
Command to run: whoami

## Step 3: `uname -a`
Explain architecture awareness.
Command to run: uname -a

## Step 4: `ls` Variants
Teach ls, ls -l, ls -a, ls -ltr, ls -R
Mini challenge: “List files in /tmp without changing directory.”

## Step 5: `cd` Navigation Tricks
cd ..
cd -
cd ~
Mini task: Move to a nested directory and return back using cd -

## Step 6: Creating and Removing Directories
mkdir demo
cd demo
cd ..
rmdir demo
mkdir -p project/src/modules/logs
ls -R project
rm -r project

## Step 7: `man` Pages
Open man ls (hint: press q to exit)
Mini task: Find a useful ls option from man and try it.

## Step 8: `history`
Run history
Use history | grep ls
Re-run a command with !<number>

## Step 9: Combining Commands
pwd && ls
ls ; pwd
sleep 5 &
jobs

## Step 10: Clear screen
clear

# Style Requirements:
- Use friendly tone: positive, humorous, encouraging.
- Keep instructions under 120 words per step.
- Provide “Try this now” blocks for active learning.
- Provide verification prompts like: “If everything worked, you should see…”
- No over-explanation. Keep it light.

# Output:
Generate:
1. scenario.yml
2. index.json
3. steps/step1.md, step2.md, … (one per step)

Make the content consistent, beginner-friendly, and fun.
