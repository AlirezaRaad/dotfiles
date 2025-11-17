# First install the stow

`sudo dnf install stow`

## git
`git config --global alias.addcom '!git add . && git commit'`

## Nvim

## tmux

`git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm`

## ghostty

## mpv

Just some basic configuration to not show me blackscreen

## hdds

`lsblk -f`

`
sudo mkdir /mnt/hdd1
sudo mkdir /mnt/hdd2
sudo mkdir /mnt/hdd3
`

`sudo nvim /etc/fstab`

`
UUID=your-uuid-1 /mnt/hdd1 ntfs-3g defaults,noauto,user 0 0
UUID=your-uuid-2 /mnt/hdd2 ntfs-3g defaults,noauto,user 0 0
UUID=your-uuid-3 /mnt/hdd3 ntfs-3g defaults,noauto,user 0 0
`

`sudo pacman -S ntfs-3g`

`
sudo chown yourusername:yourgroup /mnt/hdd1
sudo chown yourusername:yourgroup /mnt/hdd2
sudo chown yourusername:yourgroup /mnt/hdd3
`


`mkdir -p ~/mnt/sda2 ~/mnt/sdb1 ~/mnt/sdc1`
`
ln -s /mnt/sda2 ~/mnt/sda2
ln -s /mnt/sdb1 ~/mnt/sdb1
ln -s /mnt/sdc1 ~/mnt/sdc1
`
