# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# Path to your oh-my-bash installation.
export OSH=/home/paalss/.oh-my-bash
export DENO_INSTALL="/home/paalss/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="/home/paalss/.local/bin:$PATH"

alias bas="nvim ~/.bashrc"
alias bas_reload=". ~/.bashrc"
alias reload_bas=". ~/.bashrc"
alias update_bas_desktop="cp ~/.config/nvim/lua/autohotkey/hotkeys-for-windows.ahk /mnt/c/Users/Pål\ Stakvik/Desktop/hotkeys-for-windows.ahk"
alias update_bas_git="cp ~/.bashrc ~/bashrc-git/homebas"

alias q="exit"
alias t="tmux"
alias tt="bash ~/dev-tmux.sh"
alias n="nvim ."
alias nn="nvim"
alias e="explorer.exe ."

# alias dev="npm run dev"
# alias start="npm start"
# alias build="npm run build"
# alias test="npm run test"
# alias preview="npm run preview"

alias ahk="timeout 0.1s bash ~/start-ahk.sh"
alias nahk="nvim ~/autohotkey.ahk"
alias todo="~/./taskwarrior-tui"

alias lg="lazygit"
alias lgb="lazygit branch"
alias lgs="lazygit status"
alias lgl="lazygit log"
alias lgsh="lazygit stash"

alias nvim-lazy="NVIM_APPNAME=lazyvim nvim"
alias nvim-kickstart="NVIM_APPNAME=kickstart nvim"
alias nvim-chad="NVIM_APPNAME=nvchad nvim"
alias nvim-astro="NVIM_APPNAME=astronvim nvim"

alias cdd="cd ~/documents"
alias cdc="cd ~/code"
alias cddiariumbackup="cd ~/code/diarium/backup"
alias cdtest="cd ~/code/test"
alias cdastro="cd ~/code/test/astro"
alias cdtemplate="cd ~/code/astro-template"
alias cduseful="cd ~/code/useful-snippets"
alias cdportfolio="cd ~/code/portfolio"
alias cdprismic="cd /home/paalss/code/annet/my-first-prismic-io-site"
alias cddonations="cd ~/code/annet/donations"
alias cdaccounting="cd ~/code/annet/accounting"

# Neovim config
alias cdnvim="cd ~/.config/nvim/"
alias nconfig="cd ~/.config/nvim/ && nvim ."
alias cdnconfig="cd ~/.config/nvim/"
alias nnvim="cd ~/.config/nvim/"


vv() {
  select config in kickstart.nvim lazyvim nvim
  do NVIM_APPNAME=$config nvim $@; break; done
}


# windows Neovim config
# alias cdnvimQt="cd /mnt/c/Users/'Pål Stakvik'/AppData/Local/nvim"

alias cdxampp="cd /mnt/c/xampp/htdocs/sider"
alias cdannet="cd /mnt/c/xampp/htdocs/sider/annet"
alias cda="cd /home/paalss/code/annet"
alias cdhesterier="cd ~/code/annet/historier-hesterier"
alias cdhistorier="cd /mnt/c/xampp/htdocs/sider/annet/historier"
alias cdh="cd /mnt/c/xampp/htdocs/sider/annet/tekst"
# alias cdh="cd  '/mnt/c/Users/Pål Stakvik/OneDrive\Dokumenter\personlig\historier'"

alias cdpalstakvik="cd '/mnt/c/Users/Pål Stakvik'"
alias cdkattis="cd /mnt/c/xampp/htdocs/sider/annet/kodetester/kattis"
alias cdpayex="cd /mnt/c/xampp/htdocs/sider/intervjuoppgaver/payex"
alias cddocuments="cd '/mnt/c/Users/Pål Stakvik/Documents'"
alias cddesktop="cd '/mnt/c/Users/Pål Stakvik/Desktop'"
alias cddownloads="cd '/mnt/c/Users/Pål Stakvik/Downloads'"

# Forsøk på git autocompletion. fulgte https://ddev.readthedocs.io/en/stable/users/shell-completion/
# Git autocompletion
## source it from ~/.bashrc or ~/.bash_profile ##
#echo "source /etc/profile.d/bash_completion.sh" >> ~/.bashrc
## Another example Check and load it from ~/.bashrc or ~/.bash_profile ##
#grep -wq '^source /etc/profile.d/bash_completion.sh' ~/.bashrc || echo 'source /etc/profile.d/bash_completion.sh'>>~/.bashrc

source /usr/share/bash-completion/completions/git
__git_complete gco _git_checkout
__git_complete gb _git_branch
__git_complete gbs _git_bisect
__git_complete ga _git_add
__git_complete gcmsg _git_commit
# //__git_complete gcp _git_cherry-pick
__git_complete gcs _git_commit
__git_complete gd _git_diff
# //__git_complete ggpull _git_pull
# //__git_complete ggpush _git_push
__git_complete gl _git_pull
__git_complete gp _git_push
__git_complete gm _git_merge


# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.

# T H E M E S

# OSH_THEME="font"
  OSH_THEME="agnoster" # piler, branch-ikon
# OSH_THEME="powerline"
# OSH_THEME="bakke"
# OSH_THEME="amuse" # branch-ikon, litt lang
# OSH_THEME="edvardm" # helt ok, # ZSH
# OSH_THEME="emotty" # hyperkort, branch-ikon # KUN FOR OH_MY_ZSH
# OSH_THEME="powerline"
# OSH_THEME="powerline"

# Z O X I D E
# eval "$(zoxide init bash)"

# Z E O V I M - C O N F I G - S W I T C H E R
#

alias nvim-lazy="NVIM_APPNAME=LazyVim nvim"
alias nvim-kick="NVIM_APPNAME=kickstart nvim"
alias nvim-chad="NVIM_APPNAME=NvChad nvim"
alias nvim-astro="NVIM_APPNAME=AstroNvim nvim"

# function nvims() {
#     items=("default" "kickstart" "LazyVim" "NvChad" "AstroNvim")
#     config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
#     if [[ -z $config ]]; then
#         echo "Nothing selected"
#         return 0
#     elif [[ $config == "default" ]]; then
#         config=""
#     fi
#     NVIM_APPNAME=$config nvim $@
# }
# bindkey -s ^a "nvims\n"


webstorm()
{
     # /mnt/c/Program\ Files/JetBrains/WebStorm\ 2022.1.2/bin/webstorm64.exe "$1" > /dev/null 2>&1 &!
     /mnt/c/Program\ Files/JetBrains/WebStorm\ 2023.2.5/bin/webstorm64.exe .
}


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_OSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $OSH/custom?
# OSH_CUSTOM=/path/to/new-custom-folder

# To disable the uses of "sudo" by oh-my-bash, please set "false" to
# this variable.  The default behavior for the empty value is "true".
OMB_USE_SUDO=true

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
  git
  composer
  ssh
)

# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
  general
)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bashmarks
)

# Which plugins would you like to conditionally load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format:
#  if [ "$DISPLAY" ] || [ "$SSH" ]; then
#      plugins+=(tmux-autoattach)
#  fi

source "$OSH"/oh-my-bash.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-bash libs,
# plugins, and themes. Aliases can be placed here, though oh-my-bash
# users are encouraged to define aliases within the OSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias bashconfig="mate ~/.bashrc"
# alias ohmybash="mate ~/.oh-my-bash"

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
   prompt_segment black default "P"
   # prompt_segment black default "$USER"
   # prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
source /etc/profile.d/bash_completion.sh
source /etc/profile.d/bash_completion.sh
source /etc/profile.d/bash_completion.sh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Turso
export PATH="$PATH:/home/paalss/.turso"
