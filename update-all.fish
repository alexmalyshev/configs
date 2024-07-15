function update-all
  sudo dnf update --refresh && sudo dnf upgrade && flatpak upgrade
end