simlink () {
  test "$(readlink "${1}")";
}

cd ~
mkdir bk
if ! simlink .zshrc; then 
    mv .zshrc bk/.zshrc
    ln -s ~/.mahiconfs/.zshrc ~/.zshrc
else 
    echo ".zshrc already simmed"
fi

cd ~
mkdir bk
if ! simlink .zshrc; then 
    mv .gitconfig bk/.gitconfig
    ln -s ~/.mahiconfs/.gitconfig ~/.gitconfig
else
    echo ".gitconfig already simmed"
fi