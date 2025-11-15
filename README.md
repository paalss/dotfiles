# WSL dotfiles

- Mac dotfiles: https://github.com/paalss/mac-dotfiles

## Vim

### For VSCode

**Default path**

```
C:\Users\Pål Stakvik\.vimrc
```

**VSCode settings.json**

```json
{
  "vim.vimrc.enable": true
  "vim.leader": "<space>",
}
```


## Bashrc

Start (source) bashrc

```bash
. ~/.bashrc
```

<https://github.com/ohmybash/oh-my-bash>


bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

---

"Start tmux" aliases

```bash
t # tmux
```

```bash
tt # start tmux with 2 panes. Pane 1: nvim 2: command line
```

<https://useful-snippets.netlify.app/posts/taskwarrior-tui/>
