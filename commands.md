##
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILQjPkVItFQy7INqW04uj3f1I1IBGMUOomAXJCv+5riR Frumslol123@gmail.com
##
home/frums/.ssh/id_ed25519
## I would like to keep my way of creating a bashscript for installing
## packages to a new machine
## I will create the bashscript variant and add the packages to that list## instad of grabbing everything from the 'package_list.txt'

## 1 Generate the currently installed packages
pacman -Qqe > ~/dotfiles/package_list
## 1.2Install the packages from the file 
sudo pacman -S --needed - < packages.txt
## 1.3 Or this way
sudo pacman -S --needed $(cat packages.txt)
## 1.4 Setting up a fresh machine
git clone <repo> ~/dotfiles
cd ~/dotfiles
./install.sh

## Comment out blocks
CTRL + V - Visual block mode
SHIFT + I - put the editor in INSERT mode
change the text that you want and then press ESC 

## Install packages, skip already existing ones
./packages.sh

## Hyprland restart
hyprctl reload 

## Check that the symlink to dotfiles is correct
## Example
ls -l ~/.config/nvim 

## Print used keybinds
history | awk '{print$2}' | sort | uniq -c | sort -nr | head-10

## Connect to bluetooth
bluetoothctl
connect A4:F6:E6:86:F1:37

## GIT
git add . (this will add all the files, be careful)
git log --oneline
git commit
git status
git reset --hard <ID>
~/TODO
