FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /app
RUN apt update && apt install -y sudo

COPY ./auto ./auto
# cache installation of apt packages
RUN cd auto && ./install.sh

COPY ./.config .config
COPY ./home ./home
RUN mkdir -p ~/.config && \
  stow home -t ~ && \
  stow .config -t ~/.config

ENV POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
ENV TERM=xterm
# cache installation of zsh plugins
RUN zsh -ic "exit"
# cache installation of nvim plugins
RUN nvim --headless +qa
# sample git repo for git related plugins
RUN git clone https://github.com/NicholasGoh/dotfiles-public
WORKDIR /app/dotfiles-public
ENTRYPOINT ["zsh"]
