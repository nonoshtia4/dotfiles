# Nono's Dotfiles

**Warning**: Don’t blindly use my settings unless you know what that entails. Use at your own risk!

I am referring to the following article.

https://github.com/craftzdog/dotfiles-public

## Contents

- vim (NeoVim) config
  - Plugins are managed with [dein.vim](https://github.com/Shougo/dein.vim)
- tmux config
- git config

### Shell setup

- Fish shell
- Fisher - Plugin manager
- Tide - Shell theme. Use version 5: fisher install ilancosman/tide@v5
- Nerd fonts - Powerline-patched fonts. I use Hack.
- z for fish - Directory jumping
- Exa - ls replacement
- ghq - Local Git repository organizer
- peco - Interactive filtering

## How to use

- init.sh
- If you need to clear dein cache
- :call dein#recache_runtimepath()

# メモ 2021/07/01

- Tabnine のインストールスクリプトが M1 対応されていない completion-tabnine
- 補完が Typescript 以外が自動でない気がする-> hrsh7th/nvim-cmpで対応
