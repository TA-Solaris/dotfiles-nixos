# NixOS Dotfiles

These are my NixOS dotfiles.

## Commands

### First Time Setup

```bash
git clone git@github.com:TA-Solaris/dotfiles-nixos.git ~/.dotfiles
```

**Darwin**
```bash
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install)
nix run nix-darwin --use-remote-sudo --extra-experimental-features nix-command --extra-experimental-features flakes -- switch --flake ~/.dotfiles#[configuration]
```

### Rebuild

**NixOS**
```bash
sudo nixos-rebuild switch --flake ~/.dotfiles#[configuration]
```

**Darwin**
```bash
darwin-rebuild --use-remote-sudo switch --flake ~/.dotfiles#[configuration]
```

## TODO

- Fix syncthing
- Fix metacleaner build
- (Potential) Store app menu dconf
- (Future) Set Nautilus folder bookmarks/stars
- (Future) Mimetype default apps

