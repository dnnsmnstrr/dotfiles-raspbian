# My Raspberry Pi OS Dotfiles and General Setup

This the general setup I use on Raspberry Pi OS. In addition to instructions relating to the installation and use of the dotfiles, I've also added quite a bit of extra info on how I setup a Pi from scratch. Obviously, there are many ways to go about this depending on how you plan to use your Pi, but these are general steps that I use commonly and are mainly included here for my own convenience.

The dotfiles themselves have been adapted from my [OS X setup](https://github.com/dnnsmnstrr/dotfiles). Comments and suggestions welcome. :)

### Setting up the Pi

[Flash the SD card](http://www.raspberrypi.org/documentation/installation/installing-images/README.md) with the [latest Raspbian image](http://www.raspberrypi.org/downloads/). [Berryboot](https://www.berryterminal.com/doku.php/berryboot) is useful if you want multiple operating systems.

Boot the Pi from the new card and run through the initial config.

Connect to the local wifi network either [from the command line](https://github.com/joshukraine/dotfiles-raspbian/blob/master/wifi-setup.md) or [via the GUI](https://learn.adafruit.com/adafruits-raspberry-pi-lesson-3-network-setup/setting-up-wifi-with-raspbian).

Test your connection.
	
	ping -c 5 8.8.8.8

Update packages.

	sudo apt-get -y update && sudo apt-get -y upgrade
	
Install other packages.

	sudo apt-get install -y curl zsh vim tree nmap tmux git figlet fonts-inconsolata
	

### Dotfiles Setup

Verify that `zsh` is installed.

	which zsh
	#=> /usr/bin/zsh
	
Change your shell to `zsh`.

	chsh -s $(which zsh)


Install [`oh-my-zsh`](https://github.com/robbyrussell/oh-my-zsh).

    curl -L http://install.ohmyz.sh | sh

Close and reopen terminal to complete `oh-my-zsh` install.

*NOTE: The rest of the setup process assumes you are using zsh and not bash.*

Clone this repo.

    git clone https://github.com/dnnsmnstrr/dotfiles-raspbian.git ~/.dotfiles

Symlink the rc files.

    ln -nfs ~/.dotfiles/gemrc ~/.gemrc
    ln -nfs ~/.dotfiles/gitignore ~/.gitignore_global
    ln -nfs ~/.dotfiles/gitconfig ~/.gitconfig
    ln -nfs ~/.dotfiles/tmux.conf ~/.tmux.conf
    ln -nfs ~/.dotfiles/vim ~/.vim
    ln -nfs ~/.dotfiles/vimrc ~/.vimrc
    ln -nfs ~/.dotfiles/zshrc ~/.zshrc
    source ~/.zshrc
  
### Rbenv Setup

These are the steps that worked for to get [`rbenv`](https://github.com/sstephenson/rbenv) working on the Pi.

	# Clone the needed files.
    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
	git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
	git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
	
	# Add ~/.rbenv/bin to your $PATH for access to the rbenv command-line utility.
	echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
	
	# Add rbenv init to your shell to enable shims and autocompletion.
	echo 'eval "$(rbenv init -)"' >> ~/.zshrc
	
	# Pick up the changes.
	source ~/.zshrc

Verify that `rbenv` is properly installed.

	type rbenv
	#=> "rbenv is a shell function"
	
Verify that the `install` command is available.

	
	rbenv install                                                        
	#=> Usage: rbenv install [-f] [-kvp] <version>
        rbenv install [-f] [-kvp] <definition-file>
        rbenv install -l|--list
        [...]
	
Install `ruby`.
	
	rbenv install <version number>
	
Install `rails`-related packages.

	sudo apt-get install -y autoconf automake bison build-essential libreadline6 libreadline6-dev libsqlite3-dev libssl-dev libtool libxml2-dev libxslt-dev libyaml-dev nodejs openssl postgresql sqlite3 zlib1g zlib1g-dev
	
Install `rails`. (Avoid using `sudo` to prevent `rails` from installing to the system-installed `ruby` directory.

	gem install rails
	
*NOTE: If you've installed the dotfiles, the `.gemrc` file will prevent any docs from being installed with `rails` or other gems.*

### Extras
    
Remap the `caps lock` key to `ctrl`.

	# Open the file /etc/default/keyboard
	sudo vim /etc/default/keyboard
	
	# Edit the XKBOPTIONS entry
	XKBOPTIONS="terminate:ctrl_alt_bksp,ctrl:nocaps"
	
	# After saving and closing the file, run:
	sudo dpkg-reconfigure keyboard-configuration
	
	# Restart the Pi

I use [`tmuxinator`](https://github.com/tmuxinator/tmuxinator) for quickly setting up `tmux` environments.

    gem install tmuxinator
    
Change the default console font.

	# Launch the package configuration utility.
	sudo dpkg-reconfigure console-setup
	
	# Select the desired font (I use Terminus) and size (I like 12x24).
    
I recently got a new keyboard/mouse combo. When I first connected them, the mouse was super slow and laggy. After a bit of googling, I fixed it using the following steps based on this [GitHub issue](https://github.com/raspberrypi/linux/issues/642).

	# 1. Edit the file cmdline.txt
	sudo nano /boot/cmdline.txt
	
	# 2. Add the following in-line to whatever is already in the file.
	usbhid.mousepoll=0
	
	# 3. Save and close the file and reboot. Problem solved.

### Notes

In case you're not me, you'll want to add your own name and email to `~/.dotfiles/gitconfig`.


