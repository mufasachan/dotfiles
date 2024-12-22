# dotfiles

This repo is my common dotfiles for my machines. The repo has the common dotfiles and each machine have a `local` branch to adjust to the local system. The `local` branch is always based on the `main` branch.

### Get the dotfiles

```bash
git clone --recurse-submodules <repo_url>
```

Then, create symbolic link in your `.config` to this dotfiles. Alternatively, just copy the files.

### Submodules

The submodules are split in two categories: **consumer and producer** and **consumer-only**. The former submodules are used and edited, the latter are just used. The category's assignement is up to you.

```bash
# Update submodule version.
git submodule update <path_directory_submodule>
```
