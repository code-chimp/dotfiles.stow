# dotfiles.stow

Dotfiles managed via GNU Stow

The `debian` script will create symlinks in the parent/home environment

The `clean-env` script should undo all symlinks

## Example:

```bash
sudo apt install stow
cd ~
git clone https://github.com/code-chimp/dotfiles.stow.git .dotfiles
cd .dotfiles
./debian
```
