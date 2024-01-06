pacman -Sy archlinux-keyring
rm -rf /etc/pacman.d/gnupg/*
pacman-key --init
pacman-key --populate archlinux
