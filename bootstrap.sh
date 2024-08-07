###### Variables

dir=~/dotfiles-ubuntu # dotfiles directory
files=".bash_profile .vimrc .ideavimrc .aliases .functions .wezterm.lua .paths .exports .tmux.conf .zshrc z.sh"

##########

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
	echo "Creating symlink to $file in home directory."
	ln -s -f $dir/$file ~/$file
done

# alacritty config
mkdir -p ~/.config/alacritty
ln -s -f $dir/alacritty.toml ~/.config/alacritty/alacritty.toml

source ~/.bash_profile
