# !/bin/bash
# Install fish
brew install fish exa peco
fish
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install jethrokuan/z
fisher install simnalamburt/shellder

fisher install ilancosman/tide@v5
# fisher install ryanoasis/nerd-fonts
fisher install x-motemen/ghq
fisher install peco/peco

# crate symboliclink
export DIR_NAME=$(cd $(dirname $0); pwd)
echo alias ide="${DIR_NAME}/ide.sh" >> ~/.zshrc
ln -sf ${DIR_NAME}/.config/fish ~/.config/fish
