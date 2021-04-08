


#
# development
#
c2c1_id="c2c1"
#d1_loc=${SRC_NM}/${d1_nm}



#
# $1 : $d1_nm
# $2 : $SRC_NM
#function D1_New () {
#    #test $1 &&  echo " # arg exists" || echo " # arg missing"
#    echo "cd ${SRC_NM} ; jekyll new $d1_nm"
#}

function C2c1_Add () {

    lcl_src=$1
    lcl_nm=$2

    #test $1 &&  echo " # arg exists" || echo " # arg missing"
    #echo "cd ${SRC_NM} ; jekyll new $lcl_nm"
    echo "cp ${top_jk}/$lcl_src/_config.yml ${SRC_NM}/$lcl_nm"
    echo "cp ${top_jk}/$lcl_src/Gemfile ${SRC_NM}/$lcl_nm"
    echo "cp -rf ${top_jk}/$lcl_src/_includes ${SRC_NM}/$lcl_nm"
    echo "cp -rf ${top_jk}/$lcl_src/_layouts ${SRC_NM}/$lcl_nm"

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
    c2c1-new0 | c2c1-del )  Run0 Jk0_Del $c2c1_id ;;
    c2c1-new1 | c2c1-new )  Run0 Jk0_New $c2c1_id ;;
    c2c1-new2 | c2c1-add )  Run0 C2c1_Add $C2C1_NM $c2c1_id ;;
    c2c1-new3 | c2c1-on )   Run0 Jk0_On $c2c1_id ;;
    c2c1-new0- | c2c1-del ) Run1 Jk0_Del $c2c1_id ;;
    c2c1-new1- | c2c1-new ) Run1 Jk0_New $c2c1_id ;;
    c2c1-new2- | c2c1-add ) Run1 C2c1_Add $C2C1_NM $c2c1_id ;;
    c2c1-new3- | c2c1-on )  Run1 Jk0_On $c2c1_id ;;
esac
