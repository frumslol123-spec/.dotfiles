# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
 plugins=(git zsh-autosuggestions zsh-syntax-highlighting) 

 source $ZSH/oh-my-zsh.sh

# User configuration
#claude
fzf-home-nvim() {
        fd --type f --hidden --exclude .git --print0 . ~ \
                | fzf --read0 --print0 \
                | xargs -0 -r -o nvim
        zle reset-prompt
}
zle -N fzf-home-nvim
bindkey '^F' fzf-home-nvim
# ── Oxocarbon palette ────────────────────────────────────────────────
# base00 #161616  base03 #525252  base05 #f2f4f8  blue   #78a9ff
# teal   #08bdba  cyan   #33b1ff  green  #42be65  purple #be95ff
# magenta#ee5396  pink   #ff7eb6

# Prompt (oxocarbon). Set ZSH_THEME="" up top so it doesn't fight this.
ZSH_THEME_GIT_PROMPT_PREFIX="%F{#525252}on %F{#be95ff}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f "
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{#ee5396}✗%f"
ZSH_THEME_GIT_PROMPT_CLEAN=" %F{#42be65}✓%f"
PROMPT='%F{#78a9ff}%~%f $(git_prompt_info)%(?.%F{#42be65}.%F{#ee5396})❯%f '

# zsh-syntax-highlighting → oxocarbon
ZSH_HIGHLIGHT_STYLES[default]='fg=#f2f4f8'
ZSH_HIGHLIGHT_STYLES[command]='fg=#78a9ff'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#33b1ff'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#08bdba'
ZSH_HIGHLIGHT_STYLES[function]='fg=#be95ff'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#be95ff'
ZSH_HIGHLIGHT_STYLES[path]='fg=#dde1e6'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#42be65'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#42be65'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#ff7eb6'
ZSH_HIGHLIGHT_STYLES[comment]='fg=#525252'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#ee5396'

# zsh-autosuggestions: muted gray suggestion
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#525252'

# fzf colors (matches your ^F launcher)
export FZF_DEFAULT_OPTS="
  --color=bg+:#262626,bg:#161616,spinner:#08bdba,hl:#33b1ff
  --color=fg:#dde1e6,header:#33b1ff,info:#be95ff,pointer:#08bdba
  --color=marker:#42be65,fg+:#f2f4f8,prompt:#78a9ff,hl+:#33b1ff"

# ── Escape clears the current line (like Ctrl-C) ─────────────────────
function _clear-input-line() {
  BUFFER=""
  CURSOR=0
  zle reset-prompt
}
zle -N _clear-input-line
bindkey '^[' _clear-input-line   # ^[ is Escape
KEYTIMEOUT=1                     # snappy Escape (see note below)

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"
