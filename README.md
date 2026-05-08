These are my NixOS dotfiles.

# First Time Setup

```bash
git clone git@github.com:TA-Solaris/dotfiles-nixos.git ~/.dotfiles
```

**Darwin**

```bash
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install)
sudo -H nix run nix-darwin --extra-experimental-features nix-command --extra-experimental-features flakes -- switch --flake ~/.dotfiles#[configuration]
```

## Secrets

Host secrets live with each host configuration as `hosts/<host>/secrets.yaml`.

```bash
sops hosts/<host>/secrets.yaml
sudo nixos-rebuild switch --flake ~/.dotfiles#<host>
```

The current setup decrypts with the age identity at `/home/ed/.config/sops/age/keys.txt`.

`.sops.yaml` maps each host secrets file path to that host's recipient, so each host can use its own age key.

# Rebuild

**NixOS**

```bash
sudo nixos-rebuild switch --flake ~/.dotfiles#[configuration]
```

**Darwin**

```bash
sudo -H darwin-rebuild switch --flake ~/.dotfiles#[configuration]
```

# Update

```bash
sudo nix flake update
```

