# Install asdf integration (https://asdf-vm.com/)
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# Load Starship prompt (https://starship.rs/)
eval "$(starship init zsh)"

# Source shell scripts
for file in ~/dev/shell/*.sh; do
  . "$file"
done
