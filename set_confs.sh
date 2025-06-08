simlink () {
    test "$(readlink "${1}")";
}
mkdir ~/bk
declare -a arr=(
    .zshrc
    .gitconfig
    vb.code-workspace
    0x0.sh
    )
for i in "${arr[@]}"
do
    if ! simlink ~/$i; then 
        mv ~/$i ~/bk/$i
        ln -s ~/.mahiconfs/$i ~/$i
        echo "made symlink $i"
    else 
        echo "$i already symmed"
    fi
done