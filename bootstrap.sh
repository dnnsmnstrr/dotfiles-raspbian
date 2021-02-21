git pull origin master;
ln -nfs ~/.dotfiles/gemrc ~/.gemrc
ln -nfs ~/.dotfiles/gitignore ~/.gitignore_global
ln -nfs ~/.dotfiles/gitconfig ~/.gitconfig
ln -nfs ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -nfs ~/.dotfiles/.zshrc ~/.zshrc
ln -nfs ~/.dotfiles/.bashrc ~/.bashrc
ln -nfs ~/.dotfiles/aliases ~/.bash_aliases

#if [ -n "$ZSH_VERSION" ]; then
source ~/.zshrc;
#elif [ -n "$BASH_VERSION" ]; then
#  source ~/.bash_profile;
#else
#  echo 'unknown shell'
#fi