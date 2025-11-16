# Dotfiles

My configuration files

## Prerequisites

[Homebrew](https://brew.sh/)

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

[Ghostty](https://ghostty.org/)

```sh
brew install --cask ghostty
```

[GNU Stow](https://www.gnu.org/software/stow/)

```sh
brew install stow
```

[Oh My Zsh](https://ohmyz.sh/)

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

[Zsh Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

```sh
brew install zsh-syntax-highlighting
```

[Starship](https://starship.rs/)

```sh
brew install starship
```

## Setup

1. **Clone this repository:**

   ```sh
   git clone https://github.com/errmayank/dotfiles.git ~/dotfiles && cd ~/dotfiles
   ```

2. **Create symlinks using Stow:**

   ```sh
   stow .
   ```

3. **Reload the shell:**

   ```sh
   source ~/.zshrc
   ```

### Basic Commands

```sh
# Create symlinks (from ~/dotfiles directory)
stow .

# Remove symlinks
stow -D .

# Restow (useful after adding new files)
stow -R .

# Preview what would be linked (dry run)
stow -n .
```

### Adding Dotfiles

1. Move the existing config file to this repository:

   ```sh
   mv ~/.newconfig ~/dotfiles/.newconfig
   ```

2. Create the symlink:

   ```sh
   stow .
   ```

### Removing Dotfiles

1. Remove the symlink:

   ```sh
   stow -D .
   ```

2. Delete the file:

   ```sh
   rm <FILE_NAME>
   ```

3. Re-stow remaining files:

   ```sh
   stow .
   ```
