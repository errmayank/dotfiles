# Dotfiles

Personal configuration files

## Prerequisites

Before setting up these dotfiles, ensure you have the following installed:

- [GNU Stow](https://www.gnu.org/software/stow/) - For symlink management
- [Homebrew](https://brew.sh/) - Package manager for macOS
- [Oh My Zsh](https://ohmyz.sh/) - Zsh framework
- [Starship](https://starship.rs/) - Cross-shell prompt

### Install Prerequisites

```bash
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install GNU Stow
brew install stow

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Starship
brew install starship

# Install zsh-syntax-highlighting
brew install zsh-syntax-highlighting

# Install Ghostty
brew install --cask ghostty
```

## Installation

1. **Clone this repository:**

   ```bash
   git clone https://github.com/errmayank/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. **Create symlinks using Stow:**

   ```bash
   stow .
   ```

3. **Reload your shell:**
   ```bash
   source ~/.zshrc
   ```

### Basic Commands

```bash
# Create symlinks (from ~/dotfiles directory)
stow .

# Remove symlinks
stow -D .

# Restow (useful after adding new files)
stow -R .

# Preview what would be linked (dry run)
stow -n .
```

### Adding New Dotfiles

1. Move your existing config file to this repository:

   ```bash
   mv ~/.newconfig ~/dotfiles/.newconfig
   ```

2. Create the symlink:
   ```bash
   stow .
   ```

### Removing Dotfiles

1. Remove the symlink:

   ```bash
   stow -D .
   ```

2. Delete the file from this repository
3. Re-stow remaining files:
   ```bash
   stow .
   ```
