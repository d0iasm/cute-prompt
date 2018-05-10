cp ./cute.zsh ~/.cute-prompt

if grep -q "source ~/.cute-prompt" ~/.zshrc; then
  echo "Cute-prompt: Already installed"
else
  echo "source ~/.cute-prompt" >> ~/.zshrc
  echo "Cute-prompt: Installed successfully"
fi
