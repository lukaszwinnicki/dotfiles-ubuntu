###### Variables

dir=~/dotfiles-ubuntu # dotfiles directory
files=".bash_profile .paths .exports .zshrc z.sh"

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

source ~/.bash_profile
