


            

#
#
#
function C2a_New () {

    test $1 &&  echo " # arg exists" || echo " # arg missing"
    echo jekyll new $1
}


#
#
#
echo " # Jkl Args : $@"
case "$1" in
    c2a-new ) Jkl_New $2 ;;
esac
