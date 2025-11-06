
🎬 Lecture Script — “Welcome, Terminal Basics, pwd, whoami, clear” (6 minutes) 

 

 

[Opening Hook — 0:00–0:45] 

Hey everyone! 👋 Welcome to the very first step of your Linux journey! 

Now, I know what you’re thinking — “Terminal? Oh no, that black scary screen again!” 

But trust me — by the end of this course, that black screen will feel like your best friend. You’ll start feeling like a hacker in a movie — except you’ll actually know what you’re doing. 😄 

So, buckle up. We’re not just learning commands — we’re learning how to talk to Linux in its own language. And believe me, it listens really well if you know what to say. 

 

 

[Concept: What is a Terminal? — 0:45–2:00] 

Alright — first things first: What exactly is a terminal? 

Think of the terminal like the WhatsApp chat window between you and your computer. 

You type something → it replies back. 

You give it a command → it executes it faithfully. 

No fancy buttons, no mouse clicks — just you, your keyboard, and pure power. 

When developers or DevOps engineers use Linux, 90% of the magic happens right here — in the terminal. Because this is where you automate, configure, deploy, and debug like a pro. 

So don’t be afraid of the black screen — it’s actually the most honest part of your computer. If something goes wrong, it tells you the truth right on your face. 😅 

 

 

[Command 1 — pwd — 2:00–3:00] 

Let’s start simple. 

Imagine you’ve just opened the terminal. You might wonder — “Where am I right now?” 

Not existentially — I mean literally, in the file system. 

To find out, type this command: 

pwd  

It stands for Print Working Directory — and it simply tells you your current location in Linux. 

For example, it might say: 

/home/vijay  

That means — you’re inside the home folder of the user vijay. 

Analogy time 🎯 — think of Linux like a huge city, and pwd is your Google Maps “You Are Here” marker. Before moving anywhere, it’s good to know where you currently are. 

 

 

[Command 2 — whoami — 3:00–3:45] 

Next up, the command that answers a very deep question — Who am I? 😄 

Just type: 

whoami  

And Linux will reply with your username. Simple, but important — because sometimes, you might have multiple users on a server, and this command reminds you which hat you’re wearing. 

So in a way, whoami is your ID card in the Linux world. 

 

 

[Command 3 — clear — 3:45–4:30] 

Now, as you type more and more commands, your terminal starts to look messy — like your desk on a Monday morning. 

So what do we do? We clean it up! 🧹 

Just type: 

clear  

Boom — clean slate. 

Your commands are still there (you can scroll up if you want), but the screen feels fresh and ready for the next set of magic. 

 

 

[Transition — 4:30–5:30] 

Alright — so far we’ve learned: 

✅ How to know where you are (pwd) 

✅ Who you are (whoami) 

✅ And how to keep things neat (clear) 

These are the kind of commands you’ll use every single day. 

They’re small, but trust me, they’re like the “Hello, World” of Linux — your first real conversation with the system. 

Now it’s time to practice all of this in our KillerKoda lab 💻 

You’ll see a terminal window on the right, and on the left, I’ll walk you through the exact same commands we discussed — one by one. 

Together, we’ll type them, see what happens, and I’ll show you a few small tricks that’ll make you feel instantly comfortable in the terminal. 

 

 

[Closing — 5:30–6:00] 

So, ready to get your hands dirty? 

Let’s head to the lab, fire up that terminal, and start typing your first Linux words. 

I promise — by the end of this, you’ll realize the terminal isn’t scary. It’s just waiting to become your new superpower. 💪 

Let’s jump in! 

 

 

Would you like me to now generate Lecture 2 (“ls, cd, Paths & Navigation Mastery”) in the same voice and format — continuing the storytelling and lab-integration flow? 

 

 

 

🎬 Lecture 2 — “ls, cd, Paths & Navigation Mastery” (8 minutes) 

 

 

[Opening Hook — 0:00–0:45] 

Welcome back, Linux explorers! 👋 

In the last lecture, we discovered where we are using pwd, and who we are using whoami. 

Now it’s time to start moving around the Linux world — like exploring different streets and neighborhoods of a massive digital city. 

So today’s mission: learn how to navigate through directories like a pro. 

We’ll meet two powerful buddies — ls and cd. These two will help you see where you can go, and move there instantly. 

 

 

[Concept: Understanding Linux Paths — 0:45–2:00] 

Before we jump into commands, let’s talk about paths. 

Imagine Linux as a huge building. Each floor is a folder, and inside each floor, there are rooms (subfolders). 

There are two ways to describe a location: 

Absolute path — from the main gate (/) all the way to your room. Example: 

/home/vijay/Documents  

Relative path — from where you currently stand. Example: 

Documents  

means “go to Documents from where I am right now.” 

So think of / as the root of all roots — the ground floor of Linux. Everything starts from there. 

 

 

[Command 1 — ls — 2:00–4:00] 

Alright, time to open our eyes. 

Type: 

ls  

and hit Enter. 

Boom — you’ll see the list of files and folders inside your current directory. 

Now, ls has some really cool options: 

ls -l → shows details (permissions, owner, size, date). 

ls -a → even shows hidden files (those that start with a dot). 

ls -lh → “human readable” sizes — no more guessing what 4096 bytes means. 

Analogy time 🎯 

Think of ls like opening a drawer — you’re just checking what’s inside before you decide what to do next. 

So if you ever feel lost — type ls and see what your world looks like. 

 

 

[Command 2 — cd — 4:00–6:00] 

Now that we can see where we are, let’s move around. 

Type: 

cd Documents  

and you’re instantly inside the Documents folder. 

To go one step back: 

cd ..  

That two dots (..) means “parent folder” — kind of like saying, “take me one floor up.” 

To go directly to your home folder (where you started): 

cd ~  

And to go anywhere in one jump: 

cd /etc  

That’s an absolute path. 

Pro tip 💡 

After typing a few letters, hit Tab — Linux will auto-complete the folder name for you. It’s like predictive text, but for geeks. 😄 

 

 

[Command Combo — pwd, ls, cd — 6:00–7:00] 

Let’s combine what we’ve learned. 

Use pwd — to check where you are. 

Use ls — to see what’s inside. 

Use cd — to move where you want. 

That’s your navigation triangle. 

Once this becomes muscle memory, you’ll fly through the Linux system faster than clicking through a file explorer. 

 

 

[Transition to KillerKoda Lab — 7:00–8:00] 

Alright, time to practice all this in our KillerKoda lab. 

We’ll start by exploring the root directory /, then navigate to the home folder, peek into hidden files, and move back and forth like Linux ninjas. 

Remember, practice is key — the more you type these, the more natural it feels. 

So open up the lab, follow along, and let’s explore the Linux city together — one cd at a time. 

Let’s go! 🚀 

 

 

 

🎬 Lecture 3 — “Create & View Files — touch, mkdir, cat, less, head, tail” (10 minutes) 

 

 

[Opening Hook — 0:00–0:45] 

Welcome back, command-line warriors! ⚔️ 

We’ve explored the Linux world, moved around like digital travelers, and seen what’s inside directories. 

Now, it’s time to start creating and reading files — because what’s a system without data, right? 

Think of this as learning how to write notes, create folders, and peek inside files — all from the comfort of your terminal seat. 

 

 

[Concept — Files & Directories — 0:45–2:00] 

In Linux, everything is a file — even folders are just special types of files. 

A file is like a piece of paper — it holds data. 

A directory (folder) is like a drawer that holds other files or more drawers. 

Today, we’ll learn how to: 

Create empty files and folders 

View what’s inside files 

Read just the beginning or the end of a file 

By the end of this, you’ll feel like the librarian of your own Linux library. 📚 

 

 

[Command 1 — touch — 2:00–3:00] 

Let’s begin by creating a new file. 

Type: 

touch notes.txt  

Boom — you just created an empty file named notes.txt. 

touch literally touches the file system — it creates the file if it doesn’t exist, or updates its timestamp if it already exists. 

Analogy time 🎯 

Imagine you’re putting a blank notebook on your desk, ready to be filled later. That’s exactly what touch does. 

 

 

[Command 2 — mkdir — 3:00–4:00] 

Now, let’s make a new folder. 

Type: 

mkdir projects  

You just created a directory named projects. 

Want to make multiple folders at once? 

mkdir day1 day2 day3  

Boom — three new folders, just like that. 

Need a nested structure (folder inside folder)? 

mkdir -p reports/2025/january  

The -p flag is like saying “create parents if needed.” 

Think of it as creating an entire folder tree in one command — no more click-click-click like in GUI. 

 

 

[Command 3 — cat — 4:00–5:30] 

Time to look inside a file. 

If you type: 

cat notes.txt  

It shows the content of the file right on your screen. 

If it’s empty — don’t panic — we can add something quickly: 

echo "Hello Linux" > notes.txt cat notes.txt  

Now you’ll see “Hello Linux”. 

cat stands for concatenate, but we mostly use it to view file content. 

Analogy: It’s like unrolling a scroll — you see everything from top to bottom in one go. 

 

 

[Command 4 — less — 5:30–7:00] 

But what if your file is huge — say, thousands of lines of log data? 

That’s where less shines: 

less bigfile.log  

less opens the file in a scrollable view. 

Use Up/Down arrows or Space to move through it. 

Press q to quit. 

It’s called less because “less is more” — it lets you read files without loading everything at once. 

Perfect for large log files or long scripts. 

 

 

[Command 5 — head and tail — 7:00–8:30] 

Sometimes you don’t want to read the whole file — just peek at the top or bottom. 

Use: 

head notes.txt  

to see the first 10 lines. 

And: 

tail notes.txt  

to see the last 10 lines. 

Add -n to customize how many lines you want: 

head -n 5 notes.txt tail -n 20 notes.txt  

This is super handy when checking log files — tail is your best friend when debugging real-time issues. 

 

 

[Command Combo Recap — 8:30–9:30] 

Let’s recap what we learned today: 

✅ touch — create a blank file 

✅ mkdir — make a directory 

✅ cat — view the full file content 

✅ less — scroll through large files 

✅ head — view top lines 

✅ tail — view bottom lines 

These are your file creation and inspection superpowers. 

With just these, you can create projects, check logs, or review outputs — all without leaving the terminal. 

 

 

[Transition to KillerKoda Lab — 9:30–10:00] 

Now let’s head to our KillerKoda lab 🧪 

We’ll create a few folders, add files, view them using cat, and scroll through some text using less, head, and tail. 

Type along with me — and by the end of this lab, you’ll have built your very first mini file system on Linux. 

Let’s dive in! 🚀 

 

 

 

 

 

 

🎬 Lecture 4 — “Search Like a Ninja — grep Basics (Hands-on)” (10 minutes) 

 

 

[Opening Hook — 0:00–0:45] 

Alright my command-line champions, welcome back! 🥷 

Today, we’re learning one of the most powerful tools in the Linux kingdom — grep. 

If Linux were a library, grep would be your superfast librarian who can instantly find the exact page, line, or word you’re looking for. 

And once you learn it, trust me, you’ll start using it everywhere — from log files to configuration checks to text searches inside code. 

 

 

[Concept: What is grep? — 0:45–2:00] 

So, what exactly is grep? 

grep stands for Global Regular Expression Print — but don’t worry about the scary name. It simply means: 

“Search for something in a file or output, and show me the matching lines.” 

Imagine you’ve got a giant book, and you want to find all the lines that mention “error.” 

You could read the whole thing... or just let grep do it for you in one shot. 

Syntax: 

grep "word" filename  

Easy, right? 

 

 

[Command 1 — Basic Search — 2:00–3:30] 

Let’s start simple. 

In the lab terminal, create a small text file: 

cat > log.txt Server started successfully Database connection failed User login successful Error: Invalid token Server stopped unexpectedly <Ctrl + D>  

Now search for the word “Server”: 

grep "Server" log.txt  

grep scans every line and prints only the ones containing “Server”. 

It’s like Ctrl+F in Notepad — but way faster and more powerful. 

 

 

[Command 2 — Case-Insensitive Search — 3:30–4:15] 

What if your text could be upper or lowercase? 

Use the -i flag: 

grep -i "error" log.txt  

This finds both Error and error. 

Think of it as turning on “ignore case” mode. 

Because sometimes, even Linux knows — humans aren’t consistent. 😄 

 

 

[Command 3 — Line Numbers — 4:15–5:00] 

Want to know where the match occurred? Add -n: 

grep -n "Server" log.txt  

Now it’ll show line numbers too — just like a GPS telling you the exact address of your match. 

 

 

[Command 4 — Multiple Files — 5:00–5:45] 

Let’s say you have multiple log files — app1.log, app2.log, etc. 

You can search all at once: 

grep "failed" *.log  

Boom — one command, all matches across files. 

When you’re managing servers, this is a lifesaver. 

 

 

[Command 5 — Inverted Match — 5:45–6:30] 

Sometimes you want the opposite — lines that don’t contain the keyword. 

That’s where -v comes in: 

grep -v "successful" log.txt  

This shows everything except lines with “successful”. 

Perfect when you’re filtering out noise and just want to see the problems. 

 

 

[Command 6 — Count Matches — 6:30–7:15] 

Want to know how many times something occurred? 

Use -c for count: 

grep -c "Server" log.txt  

It’ll just print a number — no lines, no fluff. 

Quick stats in one second! 

 

 

[Command 7 — Combine with Pipes — 7:15–9:00] 

Now here’s where it gets really cool — you can combine grep with other commands. 

Let’s list all running processes and search for “bash”: 

ps aux | grep bash  

Or search for “error” inside system logs: 

cat /var/log/syslog | grep error  

Here, the | (pipe) means “take the output of the left command and send it into grep.” 

So grep becomes your filtering lens — narrowing down the ocean of output into what actually matters. 

Analogy time 🎯 

Imagine you’re panning for gold — the output is mud, and grep is your sieve that helps you find those shiny golden nuggets of information. 

 

 

[Recap — 9:00–10:00] 

Let’s quickly recap your new ninja skills: 

✅ grep "word" file — search for text 

✅ -i — ignore case 

✅ -n — show line numbers 

✅ -v — exclude matches 

✅ -c — count matches 

✅ | grep — filter command output 

With this single command, you can instantly search through gigabytes of logs and find exactly what you need. 

This is where Linux stops being just a system — and starts feeling like a superpower. 💪 

Now, keep experimenting with different flags and combine grep with other commands — the real magic begins when you mix and match! 

 

 

 

 
 **🎬 Lecture 5 — “File Operations — cp, mv, rm, find” (10 minutes)**

---

**[Opening Hook — 0:00–0:45]**

Welcome back, terminal rockstars! 🤘
In the last session, we learned how to create and view files.
Now, it’s time to **move things around, make copies, delete stuff, and hunt files like a pro!**

Today, we’ll master the four superheroes of file operations — `cp`, `mv`, `rm`, and `find`.
Once you get these, you can manage your entire Linux file system without ever touching a mouse.

---

**[Concept — Managing Files in Linux — 0:45–1:30]**

Everyday Linux work revolves around files — copying configs, moving backups, deleting old logs, or finding a lost script somewhere in a deep directory jungle.

These commands are your daily tools.
Think of them as your **digital toolbox** — screwdriver, wrench, cutter, and radar — all in one!

---

**[Command 1 — `cp` (Copy) — 1:30–3:00]**

Let’s start with **copying files**.
Syntax is simple:

```
cp source destination
```

Example:

```
cp notes.txt backup_notes.txt
```

This creates a copy of `notes.txt` named `backup_notes.txt`.

Want to copy into another directory?

```
cp notes.txt /tmp/
```

For entire folders, you need the recursive flag `-r`:

```
cp -r projects archive/
```

Analogy time 🎯
`cp` is like using *Ctrl + C → Ctrl + V* on steroids — but with way more control.

Pro tip 💡 Add `-v` for “verbose” to see what’s being copied:

```
cp -rv projects archive/
```

---

**[Command 2 — `mv` (Move or Rename) — 3:00–4:30]**

Next up — `mv`.
This one’s smart — it both **moves** and **renames** files.

Example (rename):

```
mv notes.txt final_notes.txt
```

Example (move):

```
mv final_notes.txt documents/
```

It doesn’t make a copy — it literally moves the file.
If `cp` is “duplicate this,” then `mv` is “pick it up and put it elsewhere.”

Think of it like shifting your furniture to a new room — the old spot becomes empty.

---

**[Command 3 — `rm` (Remove) — 4:30–6:00]**

Now, let’s talk about the dangerous one — `rm`. 🧨
This command **deletes** files — permanently.
No recycle bin, no undo button, no Ctrl+Z. So, handle it with care.

Example:

```
rm oldfile.txt
```

To remove multiple files:

```
rm file1.txt file2.txt
```

For directories, you must use `-r`:

```
rm -r old_folder/
```

And if you want to delete without any confirmation (be very careful):

```
rm -rf old_folder/
```

Where `-f` stands for “force.”

Analogy: `rm -rf` is like a **chainsaw** — super useful, but you don’t swing it around carelessly.

---

**[Command 4 — `find` — 6:00–8:30]**

Alright, let’s finish strong with the *search master* — `find`.
This command helps you locate files anywhere in the system.

Syntax:

```
find [path] -name [filename]
```

Example:

```
find /home -name notes.txt
```

This searches for `notes.txt` inside `/home`.

Want to find by extension?

```
find . -name "*.log"
```

That dot (`.`) means “start from the current directory.”

You can even combine actions:

```
find . -name "*.tmp" -delete
```

Boom — finds and deletes all `.tmp` files.

Or find recently modified files:

```
find . -mtime -1
```

This shows files changed in the last 24 hours — super useful for debugging or tracking logs.

Analogy 🎯
Think of `find` like your **GPS for files**. You just tell it what you’re looking for, and it scans the entire city of Linux to locate it in seconds.

---

**[Command Combos — 8:30–9:30]**

Now, the real power comes when you combine them:

```
find . -name "*.txt" -exec cp {} backup/ \;
```

This means: *Find every .txt file and copy it to the backup folder.*

Or:

```
find . -type f -name "*.log" -exec rm {} \;
```

Wipe out all log files in one go — careful with this one!

---

**[Recap — 9:30–10:00]**

So today, you’ve learned:
✅ `cp` — copy files and directories
✅ `mv` — move or rename
✅ `rm` — remove permanently
✅ `find` — locate anything, anywhere

Together, these commands give you complete control over your file system.
You can now manage, clean up, or organize like a true DevOps pro — fast, efficient, and fearless. 💪
