

#
# development
#
d0_nm="d0"


jk0_loc=${top_jk}/k0




#   
#
#
function Jk0_Nfo () {

    echo 
    test $1 &&  echo " # arg exists" || echo " # arg missing"
    echo " # jk0_loc : ${jk0_loc} "
    echo 

}

#
#
#
function Jk0_New () {

    test $1 &&  echo " # arg exists" || echo " # arg missing"
    echo "cd $SRC_NM ; jekyll new $1"
    echo "cp .${top_ssß}/$C0_NM/favicon.ico ../$SRC_NM/$1"
    echo
}

#
#
#
function Jk0_Del () {

    test $1 &&  echo " # arg exists" || echo " # arg missing"
    echo "cd $SRC_NM ; rm -rf $1"
    
}

#
#
#
function Jk0_On () {

    test $1 &&  echo " # arg exists" || echo " # arg missing"
    echo "cd $SRC_NM/$1 ; bundle install; bundle exec jekyll serve"
}



#
#
#
# echo " # Jk0 Args : $@"
case "$1" in
    jk0-nfo ) Jk0_Nfo ;;
    jk0-new ) Jk0_New $2 ;;
esac
