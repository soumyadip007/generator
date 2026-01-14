# Git Workflow Guide - Your Forked Repository

## 🎯 Repository Setup

Your local repository is now configured to work with your fork:

- **Origin** (Your Fork): `https://github.com/soumyadip007/generator.git`
- **Upstream** (Original): `https://github.com/asyncapi/generator.git`

---

## 📋 Current Status

```bash
✅ Origin remote: Points to your fork (soumyadip007/generator)
✅ Upstream remote: Points to original AsyncAPI repo
✅ Current branch: master
```

---

## 🚀 Basic Git Commands

### Check Remote Configuration
```bash
git remote -v
```

### Check Current Branch and Status
```bash
git branch
git status
```

### View All Branches
```bash
git branch -a
```

---

## 🔄 Working with Your Fork

### 1. Commit Your Setup Changes

You have new files that should be committed:

```bash
# Add the new setup files
git add .nvmrc setup.sh QUICKSTART.md SETUP_COMPLETE.md

# Commit the changes
git commit -m "feat: add setup scripts and documentation"

# Push to your fork
git push origin master
```

### 2. Create a New Feature Branch

Always create a new branch for your work:

```bash
# Create and switch to a new branch
git checkout -b feature/my-new-feature

# Or create from a specific branch
git checkout -b feature/my-feature master
```

### 3. Make Changes and Commit

```bash
# Make your changes to files

# Check what changed
git status
git diff

# Stage changes
git add <file>
# Or stage all changes
git add .

# Commit with a meaningful message
git commit -m "feat: add new feature"

# Push to your fork
git push origin feature/my-new-feature
```

### 4. Push to Your Fork

```bash
# Push current branch to your fork
git push origin <branch-name>

# Push and set upstream tracking
git push -u origin <branch-name>
```

---

## 🔄 Syncing with Upstream

Keep your fork up-to-date with the original AsyncAPI repository:

### 1. Fetch Upstream Changes

```bash
# Fetch all branches from upstream
git fetch upstream

# View what's available
git branch -r
```

### 2. Merge Upstream Changes

```bash
# Switch to your master branch
git checkout master

# Merge upstream master into your master
git merge upstream/master

# Push updated master to your fork
git push origin master
```

### 3. Rebase Your Feature Branch (Optional)

```bash
# Switch to your feature branch
git checkout feature/my-feature

# Rebase on latest master
git rebase master

# If there are conflicts, resolve them and continue
git rebase --continue

# Force push to your fork (only for feature branches!)
git push -f origin feature/my-feature
```

---

## 🌿 Branch Management

### Create a New Branch

```bash
# From master
git checkout master
git checkout -b feature/new-feature

# From another branch
git checkout -b feature/new-feature existing-branch
```

### Switch Branches

```bash
git checkout <branch-name>

# Or use the newer syntax
git switch <branch-name>
```

### Delete a Branch

```bash
# Delete local branch
git branch -d feature/old-feature

# Force delete if not merged
git branch -D feature/old-feature

# Delete remote branch
git push origin --delete feature/old-feature
```

### List Branches

```bash
# Local branches
git branch

# All branches (local and remote)
git branch -a

# Remote branches only
git branch -r
```

---

## 📤 Contributing Back to AsyncAPI

If you want to contribute your changes back to the original AsyncAPI repository:

### 1. Ensure Your Branch is Up-to-Date

```bash
git checkout master
git fetch upstream
git merge upstream/master
git push origin master

git checkout feature/my-feature
git rebase master
```

### 2. Push to Your Fork

```bash
git push origin feature/my-feature
```

### 3. Create a Pull Request

1. Go to your fork on GitHub: `https://github.com/soumyadip007/generator`
2. Click "Pull requests" → "New pull request"
3. Select:
   - **Base repository**: `asyncapi/generator`
   - **Base branch**: `master`
   - **Head repository**: `soumyadip007/generator`
   - **Compare branch**: `feature/my-feature`
4. Fill in the PR description
5. Submit the pull request

---

## 🛠️ Common Workflows

### Workflow 1: Quick Fix

```bash
# Create branch
git checkout -b fix/quick-fix

# Make changes
# ... edit files ...

# Commit and push
git add .
git commit -m "fix: resolve issue with X"
git push origin fix/quick-fix

# Create PR on GitHub
```

### Workflow 2: Feature Development

```bash
# Sync with upstream first
git checkout master
git fetch upstream
git merge upstream/master
git push origin master

# Create feature branch
git checkout -b feature/awesome-feature

# Work on feature
# ... make changes ...
git add .
git commit -m "feat: add awesome feature"

# Keep syncing with master
git fetch upstream
git rebase upstream/master

# Push when ready
git push origin feature/awesome-feature

# Create PR on GitHub
```

### Workflow 3: Update Your Fork

```bash
# Fetch latest from upstream
git fetch upstream

# Update master
git checkout master
git merge upstream/master
git push origin master

# Update other branches
git checkout develop
git merge upstream/develop
git push origin develop
```

---

## 🔍 Useful Git Commands

### View Commit History

```bash
# Simple log
git log

# One line per commit
git log --oneline

# Graphical view
git log --graph --oneline --all

# Last 5 commits
git log -5
```

### View Changes

```bash
# Unstaged changes
git diff

# Staged changes
git diff --staged

# Changes in a specific file
git diff <file>

# Compare branches
git diff master..feature/my-feature
```

### Undo Changes

```bash
# Discard unstaged changes in a file
git restore <file>

# Unstage a file
git restore --staged <file>

# Undo last commit (keep changes)
git reset --soft HEAD~1

# Undo last commit (discard changes)
git reset --hard HEAD~1

# Revert a commit (creates new commit)
git revert <commit-hash>
```

### Stash Changes

```bash
# Save changes temporarily
git stash

# List stashes
git stash list

# Apply latest stash
git stash apply

# Apply and remove stash
git stash pop

# Apply specific stash
git stash apply stash@{0}

# Clear all stashes
git stash clear
```

---

## 📝 Commit Message Convention

Follow the [Conventional Commits](https://www.conventionalcommits.org/) format:

```
<type>(<scope>): <subject>

<body>

<footer>
```

### Types:
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, etc.)
- `refactor`: Code refactoring
- `test`: Adding or updating tests
- `chore`: Maintenance tasks

### Examples:

```bash
git commit -m "feat: add new template generation feature"
git commit -m "fix: resolve issue with file paths on Windows"
git commit -m "docs: update README with installation instructions"
git commit -m "test: add unit tests for generator"
```

---

## 🐛 Troubleshooting

### Merge Conflicts

```bash
# When you get a merge conflict:
# 1. Open the conflicted files
# 2. Look for conflict markers: <<<<<<<, =======, >>>>>>>
# 3. Resolve the conflicts manually
# 4. Stage the resolved files
git add <resolved-file>

# 5. Continue the merge/rebase
git merge --continue
# or
git rebase --continue
```

### Reset to Upstream

If your fork is messed up and you want to reset to upstream:

```bash
# Backup your work first!
git checkout master
git fetch upstream
git reset --hard upstream/master
git push -f origin master
```

### Accidentally Committed to Master

```bash
# Create a new branch with your changes
git branch feature/my-changes

# Reset master to upstream
git reset --hard upstream/master

# Switch to your new branch
git checkout feature/my-changes
```

---

## 🎯 Quick Reference

```bash
# Setup (already done)
git remote add upstream https://github.com/asyncapi/generator.git

# Daily workflow
git checkout master
git fetch upstream
git merge upstream/master
git checkout -b feature/my-feature
# ... make changes ...
git add .
git commit -m "feat: my changes"
git push origin feature/my-feature

# Sync fork
git fetch upstream
git checkout master
git merge upstream/master
git push origin master

# View remotes
git remote -v

# View branches
git branch -a

# Check status
git status
```

---

## 📚 Additional Resources

- **Git Documentation**: https://git-scm.com/doc
- **GitHub Docs**: https://docs.github.com
- **Conventional Commits**: https://www.conventionalcommits.org/
- **AsyncAPI Contributing Guide**: https://github.com/asyncapi/.github/blob/master/CONTRIBUTING.md

---

## 🎊 You're Ready!

Your repository is now properly configured to work with your fork. You can:

1. ✅ Push changes to your fork
2. ✅ Sync with upstream AsyncAPI repository
3. ✅ Create pull requests
4. ✅ Manage branches effectively

**Happy Contributing! 🚀**
