/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew install python python3 fortune cowsay lolcat wget vim cmake ack awscli colordiff postgresql readline s3cmd wget yarn

pip install virtualenvwrapper

rm ~/.bashrc
rm ~/.zshrc
rm ~/.vimrc
ln .bashrc ~/.bashrc
ln .zshrc ~/.zshrc
ln .vimrc ~/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

wget https://raw.githubusercontent.com/oskarkrawczyk/honukai-iterm-zsh/master/honukai.zsh-theme
cp squirrel.cow /usr/local/Cellar/cowsay/3.04/share/cows/

cd ~/.vim/bundle/YouCompleteMe
./install.py --all
cd
