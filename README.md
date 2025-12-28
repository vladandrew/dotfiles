

List of packages:

- sway
- waybar
- kanshi
- dunst
- wlsunset
- wdisplays

- fish
- fzf
- bat
- fd
- starship
- alacritty

- tuned and tuned-adm

Fish setup:

```
# Fisher as a plugin manager for fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish
```

Extra:
```
systemctl --user enable ssh-agent.service
```