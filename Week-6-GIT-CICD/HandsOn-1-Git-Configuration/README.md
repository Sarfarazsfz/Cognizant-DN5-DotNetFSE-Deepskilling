# Git HandsOn 1 - Git Configuration

## Objective

This hands-on demonstrates the basic Git workflow, including:

- Installing and configuring Git
- Configuring Git username and email
- Installing and configuring Notepad++
- Initializing a Git repository
- Creating and tracking files
- Committing changes
- Connecting a local repository with GitHub
- Pushing the repository to GitHub

---

# Prerequisites

- Git for Windows
- Git Bash
- GitHub Account
- Notepad++

---

# Environment

| Software | Version |
|----------|----------|
| Git | Latest Installed |
| Git Bash | Installed |
| Notepad++ | v8.9.7 |
| Operating System | Windows 11 |

---

# Repository Structure

```text
HandsOn-1-Git-Configuration
│
├── README.md
└── Screenshots
```

---

# Step 1 - Verify Git Installation

Command

```bash
git --version
```

Output

![Git Version](Screenshots/01-git-version.png)

---

# Step 2 - Configure Git Username

Commands

```bash
git config --global user.name "Md Sarfaraz Alam"

git config --global user.name
```

Output

![Git Username](Screenshots/02-git-config-username.png)

---

# Step 3 - Configure Git Email

Commands

```bash
git config --global user.email "mdsarfarazalam669@gmail.com"

git config --global user.email
```

Output

![Git Email](Screenshots/03-git-config-email.png)

---

# Step 4 - Verify Global Git Configuration

Command

```bash
git config --global --list
```

Output

![Git Config List](Screenshots/04-git-config-list.png)

---

# Step 5 - Install Notepad++

Installed Notepad++ successfully.

Output

![Notepad++ Installed](Screenshots/05-notepad++-installed.png)

---

# Step 6 - Configure Notepad++ as Git Editor

Commands

```bash
git config --global core.editor "'/c/Program Files/Notepad++/notepad++.exe' -multiInst -nosession"
```

```bash
git config --global core.editor
```

Output

![Core Editor](Screenshots/07-core-editor-configured.png)

---

# Step 7 - Open Global Git Configuration

Command

```bash
git config --global -e
```

Output

![Global Config](Screenshots/08-git-global-config-editor.png)

---

# Step 8 - Navigate to GitDemo

Command

```bash
cd /e/Cognizant-DN5-DotNetFSE-Deepskilling/Week-6-GIT-CICD/GitDemo

pwd
```

Output

![Current Directory](Screenshots/09-current-directory.png)

---

# Step 9 - Initialize Git Repository

Command

```bash
git init
```

Output

![Git Init](Screenshots/10-git-init.png)

---

# Step 10 - Verify Hidden Files

Command

```bash
ls -la
```

Output

![Hidden Files](Screenshots/11-git-hidden-files.png)

---

# Step 11 - Create welcome.txt

Commands

```bash
echo Welcome to Git HandsOn 1 > welcome.txt

ls
```

Output

![Welcome File Created](Screenshots/12-welcome-file-created.png)

---

# Step 12 - Verify File Content

Command

```bash
cat welcome.txt
```

Output

![Welcome File Content](Screenshots/13-welcome-file-content.png)

---

# Step 13 - Git Status Before Adding File

Command

```bash
git status
```

Output

![Status Before Add](Screenshots/14-git-status-before-add.png)

---

# Step 14 - Add File to Staging Area

Commands

```bash
git add welcome.txt

git status
```

Output

![Git Add](Screenshots/15-git-add-status.png)

---

# Step 15 - Commit Changes

Command

```bash
git commit -m "Add welcome.txt"
```

Output

![Git Commit](Screenshots/16-git-commit.png)

---

# Step 16 - Push Repository to GitHub

Commands

```bash
git remote add origin https://github.com/Sarfarazsfz/GitDemo.git

git branch -M main

git push -u origin main
```

Output

![Git Push](Screenshots/17-git-push-success.png)

---

# Step 17 - Verify Repository on GitHub

Output

![GitHub Repository](Screenshots/18-github-repository.png)

---

# Git Commands Used

```bash
git --version
git config --global user.name
git config --global user.email
git config --global --list
git init
git status
git add
git commit
git remote add origin
git branch -M main
git push -u origin main
```

---

# Learning Outcome

After completing this hands-on, the following Git concepts were learned:

- Git installation
- Git configuration
- Git repository initialization
- Working directory
- Staging area
- Local repository
- Git commit
- GitHub remote repository
- Git push
- Git workflow

---

# Author

**Md Sarfaraz Alam**

B.Tech Computer Science and Engineering

VFSTR University

Cognizant Digital Nurture 5.0