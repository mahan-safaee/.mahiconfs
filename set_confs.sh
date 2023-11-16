simlink () {
    test "$(readlink "${1}")";
}
mkdir ~/bk
declare -a arr=(
    .zshrc
    .gitconfig
    vb.code-workspace
    )
for i in "${arr[@]}"
do
    if ! simlink ~/$i; then 
        mv ~/$i ~/bk/$i
        ln -s ~/.mahiconfs/$i ~/$i
        echo "made simlink $i"
    else 
        echo "$i already simmed"
    fi
done