
#
# development
#
d1_nm="d1"
#d1_loc=${SRC_NM}/${d1_nm}



#
# $1 : $d1_nm
# $2 : $SRC_NM
#function D1_New () {
#    #test $1 &&  echo " # arg exists" || echo " # arg missing"
#    echo "cd ${SRC_NM} ; jekyll new $d1_nm"
#}

function D1_Add () {

    lcl_nm=$1

    #test $1 &&  echo " # arg exists" || echo " # arg missing"
    #echo "cd ${SRC_NM} ; jekyll new $d1_nm"
    #echo "cp ${top_blg}/* ${SRC_NM}/$lcl_nm"
    echo "cp ${top_jk}/$C1A_NM/_config.yml ${SRC_NM}/$lcl_nm"
    echo "cp ${top_jk}/$C1A_NM/Gemfile ${SRC_NM}/$lcl_nm"
    echo "cp -rf ${top_jk}/$C1A_NM/_bibliography ${SRC_NM}/$lcl_nm"
    echo "cp ${top_blg}/* ${SRC_NM}/$lcl_nm/_posts"
}

#
#
#
function D1_New_Bak () {

    #echo mv $1/index.markdown $1/index_md
    echo cp ${jk0_loc}/index.html $1/index.html
    echo cp ${jk0_loc}/_config.yml $1/_config.yml
    echo cp ${jk0_loc}/Gemfile $1/Gemfile
    echo "cp ${top_blg}/* $1/_posts/"
}






#
#
#
# echo " # Jk1 Args : $@"
case "$1" in
    d1-new0 | d1-del ) Jk0_Del $d1_nm ;;
    d1-new1 | d1-new ) Jk0_New $d1_nm ;;
    d1-new2 | d1-add ) D1_Add $d1_nm;;
    d1-new3 | d1-on ) Jk0_On $d1_nm ;;
esac
