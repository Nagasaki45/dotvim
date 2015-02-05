My .vimrc
=========

## Usage

The following commands will clone the repo, symlink `~/.vimrc` and update the
bundles:

    git clone git@github.com:Nagasaki45/dotvim.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    git clone git@github.com:gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Install plugins from the command line:

    vim +PluginInstall +qall
