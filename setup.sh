if command -v brew &> /dev/null; then
    echo "Skip Brew installation"
else
    echo "Install Brew first"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo >> $HOME/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo "Install essential Apps"
# jordanbaird-ice for menu bar mgmt
# cherry-studio the LLM client
# shottr for screenshot
# input-source-pro for input source management
# fork for git
# ghostty for terminal
# chezmoi to manage dotfiles
# applite to manage brew cask
# the-unarchiver for unzip
# visual-studio-code for coding
brew install --cask jordanbaird-ice cherry-studio shottr input-source-pro fork ghostty chezmoi applite the-unarchiver visual-studio-code

echo "Install fonts"
brew install --cask font-maple-mono font-maple-mono-nf font-maple-mono-nf-cn
brew install font-fira-code


echo "Install essential tools"
# jq for JSON
# loop for window mgmt
# orbstack for docker-ish
# gh for GitHub CLI
# uv for Python
# n for Node mgmt
# zed for Coding
# maccy for clipboard management
# squirrel-app input
# zoxide for directory navigation
# fzf
# [starship](https://github.com/starship/starship) is a shell prompt
brew install git jq loop orbstack gh uv n zed maccy raycast squirrel-app zoxide fzf starship


echo "Zsh..."
# Zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
