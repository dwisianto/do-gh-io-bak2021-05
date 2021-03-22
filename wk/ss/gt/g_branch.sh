#
#
#


function Gt_Br_All {
    echo 'git branch -a'
}

function Gh_Pg_New {
    test $1 || echo "$1 is missing" && echo "git branch $1 master" 
}



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

#
#
#
#echo " # g_brach Args : $1"
case "$1" in
    gt-br-all ) Gt_Br_All ;;
    gh-pg-new ) Gh_Pg_New $GH_PG ;;
    gh-pg-new-all ) Gt_Br_All ;;
    gh-pg-upd ) Gh_Pg_Upd ;;
esac