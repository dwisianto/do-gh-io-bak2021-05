function Gh_Pg_Upd {

    echo ' '
    echo ' git add .'
    echo ' git status '
    echo ' git status // to see what changes are going to be commited '
    echo ' git commit -m "Some descriptive commit message" '
    echo ' git push origin master '
    echo ' '
    echo ' git checkout gh-pages // go to the gh-pages branch'
    echo ' git rebase master // bring gh-pages up to date with master '
    echo ' git push origin gh-pages // commit the changes '
    echo ' git checkout master // return to the master branch'
    echo ' '
}

case "$1" in
    pg-co ) echo "git checkout $GH_PG" ;;
    pg-rb ) echo "" ;;
    pg-psh ) echo "git push origin gh-pages" ;;
esac