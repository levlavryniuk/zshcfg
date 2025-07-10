push:
  cp ~/.zshrc ./.zshrc && cp ~/.tmux.conf ./.tmux.conf && jj bookmark set main && jj desc -m "Update ~/.zshrc" && jj git push
