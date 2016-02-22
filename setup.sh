#/!bin/bash

CWD=$(pwd)

### Vim
echo Setting up Vim...

# .vimrc
if [ -f "$HOME/.vimrc" ]; then
  echo ".vimrc is already exists. Exiting..."
  exit
else 
  cp .vimrc $HOME
fi

# .vim
if [ ! -d "$HOME/.vim" ]; then
  mkdir "$HOME/.vim"
fi

# ctrl+p
cd "$HOME/.vim"
git clone https://github.com/ctrlpvim/ctrlp.vim.git bundle/ctrlp.vim
cd "$CWD"

echo Done setting up Vim

