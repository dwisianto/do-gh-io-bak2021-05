

case "$1" in
    st | mt-st ) echo "git status" ;;
    mt-co ) echo "git checkout $GH_MT" ;;
esac
