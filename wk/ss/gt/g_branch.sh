#
#
#


function Gt_Br_All {
    echo 'git branch -a'
}

function Gh_Pg_New {
    test $1 || echo "$1 is missing" && echo "git branch $1 master" 
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