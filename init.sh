# !/bin/bash
# coc.vimを使うためにnode のインストールが必要
brew install node.js
npm install -g yarn

# setup defx
sudo pip3 install neovim
brew tap neovim/neovim
brew install --HEAD neovim

# setup Nerd/font
brew install font-hack-nerd-font
# Silver searcher install
brew install the_silver_searcher
# fzf
brew install fzf

# crate symboliclink
export DIR_NAME=$(cd $(dirname $0); pwd)
echo alias ide="${DIR_NAME}/ide.sh" >> ~/.zshrc
ln -sf ${DIR_NAME}/.vimrc.osx ~/.vimrc.osx
ln -sf ${DIR_NAME}/.vimrc.maps ~/.vimrc.maps
ln -sf ${DIR_NAME}/.vimrc.lightline ~/.vimrc.lightline
ln -sf ${DIR_NAME}/.vimrc ~/.vimrc
ln -sf ${DIR_NAME}/.tmux.powerline.conf ~/.tmux.powerline.conf
ln -sf ${DIR_NAME}/.tmux.conf.osx ~/.tmux.conf.osx
ln -sf ${DIR_NAME}/.tmux.conf ~/.tmux.conf 
ln -sf ${DIR_NAME}/.gitignore ~/.gitignore 
ln -sf ${DIR_NAME}/.gitconfig ~/.gitconfig 
ln -sf ${DIR_NAME}/.config/nvim ~/.config/nvim
cp -rp ${DIR_NAME}/.vim/* ~/.vim/.
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
