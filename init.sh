# !/bin/bash
# coc.vimを使うためにnode のインストールが必要
brew install node.js
npm install -g yarn

# setup defx
sudo pip3 install neovim
brew tap neovim/neovim
brew install --HEAD neovim tree-sitter luajit
ln -s `which nvim` /usr/local/bin/vim

# setup Nerd/font
brew install font-hack-nerd-font
# Silver searcher install
brew install the_silver_searcher
# fzf ripgrep(rg)
brew install fzf ripgrep

# install commitizen
npm install -g commitizen typescript typescript-language-server
npm install -g diagnostic-languageserver
npm i -g eslint_d prettier


# install tig
brew install tig

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
ln -sf ${DIR_NAME}/.tigrc ~/.tigrc
ln -sf ${DIR_NAME}/.czrc ~/.czrc
cp -rp ${DIR_NAME}/.vim/* ~/.vim/.
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
# install vim-plug
sh -c 'curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
