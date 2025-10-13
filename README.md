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
sudo -H nix run nix-darwin --extra-experimental-features nix-command --extra-experimental-features flakes -- switch --flake ~/.dotfiles#[configuration]
```

### Rebuild

**NixOS**

```bash
sudo nixos-rebuild switch --flake ~/.dotfiles#[configuration]
```

**Darwin**

```bash
sudo -H darwin-rebuild switch --flake ~/.dotfiles#[configuration]
```

### Update

```bash
sudo nix flake update
```
