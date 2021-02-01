# .dotfiles

My dotfiles, duh!

## How it look :)

![preview](preview.gif)
_recorded using [VHS](https://github.com/charmbracelet/vhs)_

- Terminal: [Kitty](https://sw.kovidgoyal.net/kitty/)
- Shell: [Zsh](https://ohmyz.sh/)
- Zsh theme: [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- Font: [Hack Nerd Font](https://www.nerdfonts.com/)
- Colorscheme: [Tokyonight Storm](https://github.com/folke/tokyonight.nvim?tab=readme-ov-file#storm)

## Usage

1. `git clone` the repository into your `$HOME` directory.
2. `cd` into the cloned repository directory.
3. Use [GNU Stow](https://www.gnu.org/software/stow/) to symlink
   the dotfiles into your `$HOME` directory.

   ```sh
   stow .
   ```

   or

   ```sh
   stow --adopt .
   ```
