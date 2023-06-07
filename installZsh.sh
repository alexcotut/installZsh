#/bin/bash

sudo apt install zsh git fonts-font-awesome

touch ~/.vimrc
echo 'set relativenumber' > ~/.vimrc


sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo " "
echo Post install actions:
echo Add zsh-syntax-highlighting zsh-autosuggestions to plugins in .zshrc
echo Change default theme to powerlevel10k/powerlevel10k in .zshrc
echo Start /bin/zsh and set as default with chsh
