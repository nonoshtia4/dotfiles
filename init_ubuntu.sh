# !/bin/bash
# coc.vimを使うためにnode のインストールが必要
sudo apt install nodejs -y
sudo apt install npm -y
# sudo npm install -g yarn 

# setup defx
sudo pip install neovim debugpy
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update 
sudo apt install neovim
sudo apt install --HEAD neovim tree-sitter luajit
sudo ln -s `which nvim` /usr/local/bin/vim

# setup Nerd/font
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
# Silver searcher install
sudo apt install the_silver_searcher
# fzf ripgrep(rg)
sudo apt install fzf ripgrep

# install commitizen
sudo npm install -g commitizen typescript typescript-language-server prettier_d_slim eslint tree-sitter

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
