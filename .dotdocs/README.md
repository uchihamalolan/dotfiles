# Personal Dotfile (using a bare git-repo in my $HOME)

### List of dotfiles I try to track
- nvim config
- alacritty config
- zsh config
- zellij config
- gitconfig

---

### How I track it ? (git bare repository)

**Alias for Git Bare Repo command**
```bash
# bare git (in .zshrc)
alias dtf="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
```

**Adding/Updating a file**
```bash
dtf add FILENAME
dtf commit -m "msg"
dtf push
```

