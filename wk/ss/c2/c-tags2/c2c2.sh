


#
# development
#
c2c2_id="c2c2"




#
# $1 : $d1_nm
# $2 : $SRC_NM
#function D1_New () {
#    #test $1 &&  echo " # arg exists" || echo " # arg missing"
#    echo "cd ${SRC_NM} ; jekyll new $d1_nm"
#}

function C2c2_Add () {

    test $1 && echo " # arg1 ok" || return
    test $2 && echo " # arg2 ok" || return 
    lcl_src=$1
    lcl_nm=$2

    #echo "cd ${SRC_NM} ; jekyll new $lcl_nm"
    echo "cp ${top_jk}/$lcl_src/Gemfile ${SRC_NM}/$lcl_nm"
    echo "cp ${top_jk}/$lcl_src/_config.yml ${SRC_NM}/$lcl_nm"
    
    echo "cp -rf ${top_jk}/$lcl_src/_includes ${SRC_NM}/$lcl_nm"
    echo "cp -rf ${top_jk}/$lcl_src/_layouts ${SRC_NM}/$lcl_nm"
    echo "cp -rf ${top_jk}/$lcl_src/_posts ${SRC_NM}/$lcl_nm"
    
    echo "rm ${SRC_NM}/$lcl_nm/index.markdown"
    echo "rm ${SRC_NM}/$lcl_nm/about.markdown"
    echo "cp  ${top_jk}/$lcl_src/index.md ${SRC_NM}/$lcl_nm"

#    echo "cp -rf ${top_jk}/$lcl_src/_biography ${SRC_NM}/$lcl_nm"
#    echo "cp -rf ${top_jk}/$lcl_src/_romance ${SRC_NM}/$lcl_nm"
#    echo "cp -rf ${top_jk}/$lcl_src/blog ${SRC_NM}/$lcl_nm"
#    echo "cp -rf ${top_jk}/$lcl_src/paginations ${SRC_NM}/$lcl_nm"
#    echo "cp -rf ${top_jk}/$lcl_src/tags ${SRC_NM}/$lcl_nm"
#    echo "cp -rf ${top_jk}/$lcl_src/byisbn.md ${SRC_NM}/$lcl_nm"

}




#
#
#
# echo " # Jk1 Args : $@"
case "$1" in
    c2c2-new0 | c2c2-del ) Jk0_Del $c2c2_id ;;
    c2c2-new1 | c2c2-new ) Jk0_New $c2c2_id ;;
    c2c2-new2 | c2c1-add ) C2c2_Add $C2C2_NM $c2c2_id ;;
    #c2c2-new2 ) C2c2_Add ;; 
    c2c2-new3 | c2c1-on ) Jk0_On $c2c2_id ;;
esac
