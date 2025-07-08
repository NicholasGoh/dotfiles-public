# dotfiles-public

Batteries-included, quality-of-life dotfiles. Try them out in a Dockerized environment; if you like it, follow the [installation](#installation) steps. All configurations use the native repositories' sensible defaults, but you can easily customize them to your liking.

## Prebuilt Image on DockerHub

```bash
docker pull gohn0004/dotfiles
```

```bash
docker run --rm -it gohn0004/dotfiles
```

Or try with a directory of your choice:

```bash
docker run --rm -it -v ./:/app -w /app gohn0004/dotfiles
```

To use with `lazydocker`:

```bash
docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock gohn0004/dotfiles
```

## Overview of features

### Zsh Plugins

[![romkatv/powerlevel10k](https://img.shields.io/github/stars/romkatv/powerlevel10k?label=romkatv%2Fpowerlevel10k)](https://github.com/romkatv/powerlevel10k)

<details>
  <summary>Customizable Zsh theme</summary>

![preview](https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/prompt-styles-high-contrast.png)

</details>

[![junegunn/fzf](https://img.shields.io/github/stars/junegunn/fzf?label=junegunn%2Ffzf)](https://github.com/junegunn/fzf)

<details>
  <summary>Fuzzy finder instead of exact matches</summary>

![preview](https://raw.githubusercontent.com/junegunn/i/master/fzf-preview.png)

</details>

[![joshskidmore/zsh-fzf-history-search](https://img.shields.io/github/stars/joshskidmore/zsh-fzf-history-search?label=joshskidmore%2Fzsh-fzf-history-search)](https://github.com/joshskidmore/zsh-fzf-history-search)
<details>
  <summary>A simple zsh plugin to replace Ctrl-r with an fzf-driven, searchable list of history.</summary>

![preview](https://camo.githubusercontent.com/72752552f5d12b1d4a3de4167e548c6ed6373405e1787a2a2132db21a306005a/68747470733a2f2f6a6f73682e73682f355550722e706e67)

</details>

[![Aloxaf/fzf-tab](https://img.shields.io/github/stars/Aloxaf/fzf-tab?label=Aloxaf%2Ffzf-tab)](https://github.com/Aloxaf/fzf-tab)

<details>
  <summary>Replace zsh's default completion selection menu with fzf</summary>

[![asciicast](https://asciinema.org/a/293849.svg)](https://asciinema.org/a/293849)

</details>

[![sharkdp/bat](https://img.shields.io/github/stars/sharkdp/bat?label=sharkdp%2Fbat)](https://github.com/sharkdp/bat)

<details>
  <summary>A cat(1) clone with syntax highlighting and Git integration.</summary>

![preview](https://camo.githubusercontent.com/a9789c5200bdb0a22602643d7bf85f0f424ddd4259e763abc865609010c5e228/68747470733a2f2f696d6775722e636f6d2f724773646e44652e706e67)

</details>

[![BurntSushi/ripgrep](https://img.shields.io/github/stars/BurntSushi/ripgrep?label=BurntSushi%2Fripgrep)](https://github.com/BurntSushi/ripgrep)


<details>
  <summary>Better `grep`</summary>

![preview](https://burntsushi.net/stuff/ripgrep1.png)

</details>

[![sharkdp/fd](https://img.shields.io/github/stars/sharkdp/fd?label=sharkdp%2Ffd)](https://github.com/sharkdp/fd)


<details>
  <summary>Better `find`</summary>

![preview](https://github.com/sharkdp/fd/raw/master/doc/screencast.svg)

</details>

[![jesseduffield/lazygit](https://img.shields.io/github/stars/jesseduffield/lazygit?label=jesseduffield%2Flazygit)](https://github.com/jesseduffield/lazygit)


<details>
  <summary>A simple terminal UI for git commands</summary>

![preview](https://github.com/jesseduffield/lazygit/raw/assets/demo/commit_and_push-compressed.gif)

</details>

[![jesseduffield/lazydocker](https://img.shields.io/github/stars/jesseduffield/lazydocker?label=jesseduffield%2Flazydocker)](https://github.com/jesseduffield/lazydocker)
<details>
  <summary>A simple terminal UI for both docker and docker-compose.</summary>

![preview](https://github.com/jesseduffield/lazydocker/raw/master/docs/resources/demo3.gif)

</details>

[![dandavison/delta](https://img.shields.io/github/stars/dandavison/delta?label=dandavison%2Fdelta)](https://github.com/dandavison/delta)

<details>
  <summary>A syntax-highlighting pager for git, diff, and grep output</summary>

![preview](https://user-images.githubusercontent.com/52205/86275526-76792100-bba1-11ea-9e78-6be9baa80b29.png)

</details>

[![theryangeary/choose](https://img.shields.io/github/stars/theryangeary/choose?label=theryangeary%2Fchoose)](https://github.com/theryangeary/choose)

<details>
  <summary>This is `choose`, a human-friendly and fast alternative to `cut` and (sometimes) `awk`</summary>

[![`choose` demo](https://asciinema.org/a/315932.png)](https://asciinema.org/a/315932?autoplay=1)

</details>

[![MohamedElashri/exa-zsh](https://img.shields.io/github/stars/MohamedElashri/exa-zsh?label=MohamedElashri%2Fexa-zsh)](https://github.com/MohamedElashri/exa-zsh)

<details>
  <summary>Better `ls`</summary>

![preview](https://github.com/eza-community/eza/raw/main/docs/images/screenshots.png)

</details>

[![hlissner/zsh-autopair](https://img.shields.io/github/stars/hlissner/zsh-autopair?label=hlissner%2Fzsh-autopair)](https://github.com/hlissner/zsh-autopair)

A simple plugin that auto-closes, deletes and skips over matching delimiters in zsh intelligently. Hopefully.

### Other CLI tools

[![muesli/duf](https://img.shields.io/github/stars/muesli/duf?label=muesli%2Fduf)](https://github.com/muesli/duf)

<details>
  <summary>Disk Usage/Free Utility</summary>

![preview](https://github.com/muesli/duf/raw/master/duf.png)

</details>

[![wting/autojump](https://img.shields.io/github/stars/wting/autojump?label=wting%2Fautojump)](https://github.com/wting/autojump)

autojump is a faster way to navigate your filesystem. It works by maintaining a database of the directories you use the most from the command line.

[![rofl0r/ncdu](https://img.shields.io/github/stars/rofl0r/ncdu?label=rofl0r%2Fncdu)](https://github.com/rofl0r/ncdu)

Nicer disk usage.

[![ranger/ranger](https://img.shields.io/github/stars/ranger/ranger?label=ranger%2Franger)](https://github.com/ranger/ranger)

<details>
  <summary>Console file manager</summary>

![preview](https://raw.githubusercontent.com/ranger/ranger-assets/master/screenshots/twopane.png)

</details>

### Neovim Plugins

[![LazyVim/LazyVim](https://img.shields.io/github/stars/LazyVim/LazyVim?label=LazyVim%2FLazyVim)](https://github.com/LazyVim/LazyVim)

<details>
  <summary>Neovim distro (batteries batteries-included)</summary>

![image](https://user-images.githubusercontent.com/292349/211285846-0b7bb3bf-0462-4029-b64c-4ee1d037fc1c.png)
![image](https://user-images.githubusercontent.com/292349/213447056-92290767-ea16-430c-8727-ce994c93e9cc.png)

</details>

<details>
  <summary>Interactive keymap cheatsheet</summary>

![preview](https://user-images.githubusercontent.com/292349/211862473-1ff5ee7a-3bb9-4782-a9f6-014f0e5d4474.png)

</details>

## Installation

## Inspirations for this repository

- https://github.com/ibraheemdev/modern-unix
- https://github.com/tainvecs/dotfiles
