# zmodload zsh/zprof

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"
export ZINIT_HOMEDIR=~/.local/share/zinit

zinit ice depth=1
zinit light romkatv/powerlevel10k

zinit ice as"command" from"gh-r" \
          atclone"echo 'Installing fzf...'; \
          sudo mv fzf /usr/bin && \
          echo 'fzf installed successfully!' || \
          echo 'Failed to install fzf!'"
zinit light junegunn/fzf

zinit ice as"command" from"gh-r" \
          atclone"echo 'Installing bat...'; \
          sudo mv bat*/bat /usr/bin && \
          echo 'bat installed successfully!' || \
          echo 'Failed to install bat!'"
zinit light sharkdp/bat

zinit ice as"command" from"gh-r" \
          atclone"echo 'Installing rg...'; \
          sudo mv ripgrep*/rg /usr/bin && \
          echo 'rg installed successfully!' || \
          echo 'Failed to install rg!'"
zinit light BurntSushi/ripgrep

zinit ice as"command" from"gh-r" \
          atclone"echo 'Installing fd...'; \
          sudo mv fd*/fd /usr/bin && \
          echo 'fd installed successfully!' || \
          echo 'Failed to install fd!'"
zinit light sharkdp/fd

zinit ice as"command" from"gh-r" \
          atclone"echo 'Installing lazygit...'; \
          sudo mv lazygit /usr/bin && \
          echo 'lazygit installed successfully!' || \
          echo 'Failed to install lazygit!'"
zinit light jesseduffield/lazygit

zinit ice as"command" from"gh-r" \
          atclone"echo 'Installing delta...'; \
          sudo mv delta*/delta /usr/bin && \
          echo 'delta installed successfully!' || \
          echo 'Failed to install delta!'"
zinit light dandavison/delta

# pin version for ubuntu 20.04
zinit ice as"command" from"gh-r" ver"v1.3.4" \
          atclone"echo 'Installing choose...'; \
          sudo chmod +x choose* && \
          sudo mv choose* /usr/bin/choose && \
          echo 'choose installed successfully!' || \
          echo 'Failed to install choose!'"
zinit light theryangeary/choose

zinit ice as"command" from"gh" \
    atclone"echo 'Downloading and building tig...'; \
    wget https://github.com/jonas/tig/releases/download/tig-2.5.12/tig-2.5.12.tar.gz && \
    tar -xzf tig-2.5.12.tar.gz && \
    cd tig-2.5.12 && \
    make && \
    sudo make install && \
    echo 'tig installed successfully!' || \
    echo 'Failed to install tig!'" \
    atpull"%atclone"
zinit light jonas/tig

zinit ice lucid wait'0b'
zinit light joshskidmore/zsh-fzf-history-search

zinit ice lucid wait"1"
zinit light MohamedElashri/exa-zsh

zinit ice lucid wait"0c"
zinit light hlissner/zsh-autopair

zinit ice lucid wait"0a"
zinit light Aloxaf/fzf-tab

zinit for \
    atload"zicompinit; zicdreplay" \
    blockf \
    lucid \
    wait \
    zsh-users/zsh-completions \
    zsh-users/zsh-autosuggestions \
    zdharma-continuum/fast-syntax-highlighting

# ubuntu 20.04 support
# https://github.com/Aloxaf/fzf-tab/issues/391#issuecomment-1962290542
# zstyle ':fzf-tab:*' fzf-bindings-default 'tab:down,btab:up,change:top,ctrl-space:toggle,bspace:backward-delete-char,ctrl-h:backward-delete-char'
# zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# disable <C-s>
stty stop undef
setopt autocd
export EDITOR=nvim
export DOCKER_BUILDKIT=1
. /usr/share/autojump/autojump.sh
# clear
CASE_SENSITIVE="true"
export FZF_DEFAULT_COMMAND="fd --type file --hidden --color=always --exclude .git "
export FZF_DEFAULT_OPTS="--ansi"
unsetopt HIST_VERIFY
export HISTFILE=~/.zsh_history
export SAVEHIST=10000
export HISTSIZE=10000
bindkey -v
bindkey '^R' history-incremental-pattern-search-backward

autoload -U +X bashcompinit && bashcompinit

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

source ~/.local/share/zinit/plugins/hlissner---zsh-autopair/autopair.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
