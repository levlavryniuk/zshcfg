push:
  cp ~/.zshrc ./.zshrc && jj bookmark set main && jj desc -m "Update ~/.zshrc" && jj git push
