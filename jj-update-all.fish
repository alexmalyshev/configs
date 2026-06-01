function jj-update-all
  jj git fetch --all-remotes && jj bookmark set -r main@upstream main && jj rebase -d main -b 'bookmarks()' && jj git push -b main
end
