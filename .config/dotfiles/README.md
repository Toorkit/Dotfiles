# Dotfiles
## What is this?
My personal Dotfiles. They used to be synced via Syncthing and symlinked with GNU Stow, but then I found out about the much simpler git method. 
I chose to use `~/.config/dotfiles/` instead of `~/.cfg/`.

## Usage 

- Initial Setup:
```bash
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc 
```

- Then you use it like so:
```bash
config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push
```


## Attributions
Thank you's to people on Hacker News for the [git tips](https://www.atlassian.com/git/tutorials/dotfiles).


## Random theming bits for a new install (because I will forget):
[Qbittorrent Theme](https://github.com/catppuccin/qbittorrent)
The capitaine-cursors, breeze-gtk and arc-icon-theme packages in the Arch repository.
Kitty Terminal themes can be easily installed with `kitty +kitten themes`.
[Rofi Themes](https://github.com/newmanls/rofi-themes-collection).
