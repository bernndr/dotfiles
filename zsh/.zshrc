# Specifies locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Set powerlevel10k theme.
# https://github.com/romkatv/powerlevel10k
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# Autoupdate without prompt
zstyle ':omz:update' mode auto

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source ~/.oh-my-zsh/oh-my-zsh.sh

# Set default editor
export EDITOR='nova'

# Aliases
source ~/.aliases 2> /dev/null

# Setup fzf
# https://github.com/junegunn/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Set theme of fzf
# https://github.com/dracula/fzf
# For dracula theme, use 8-bit because apple terminal not support 24-bit color
export FZF_DEFAULT_OPTS='--color=fg:255,bg:-1,hl:141 --color=fg+:255,bg+:60,hl+:141 --color=info:222,prompt:48,pointer:213 --color=marker:213,spinner:221,header:67'
# export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'

# Setting ag as the default source for fzf
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
