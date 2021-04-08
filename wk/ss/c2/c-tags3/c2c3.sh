


#
# development
#
c2c3_id="c2c3"




#
# $1 : $d1_nm
# $2 : $SRC_NM
#function D1_New () {
#    #test $1 &&  echo " # arg exists" || echo " # arg missing"
#    echo "cd ${SRC_NM} ; jekyll new $d1_nm"
#}

function c2c3_Add () {

    test $1 && echo " # arg1 ok" || return
    test $2 && echo " # arg2 ok" || return 
    lcl_nm=$1
    lcl_src=$2

    #echo "cd ${SRC_NM} ; jekyll new $lcl_nm"
    echo "cp ${top_jk}/$lcl_src/Gemfile ${SRC_NM}/$lcl_nm"
    echo "cp ${top_jk}/$lcl_src/_config.yml ${SRC_NM}/$lcl_nm"
    
    echo "cp -rf ${top_jk}/$lcl_src/_includes ${SRC_NM}/$lcl_nm"
    echo "cp -rf ${top_jk}/$lcl_src/_layouts ${SRC_NM}/$lcl_nm"
    echo "cp -rf ${top_jk}/$lcl_src/_posts ${SRC_NM}/$lcl_nm"
    
    echo "rm -f ${SRC_NM}/$lcl_nm/index.markdown"
    echo "rm -f ${SRC_NM}/$lcl_nm/about.markdown"
    echo "cp  ${top_jk}/$lcl_src/index.md ${SRC_NM}/$lcl_nm"

#    echo "cp -rf ${top_jk}/$lcl_src/_biography ${SRC_NM}/$lcl_nm"
#    echo "cp -rf ${top_jk}/$lcl_src/_romance ${SRC_NM}/$lcl_nm"
#    echo "cp -rf ${top_jk}/$lcl_src/blog ${SRC_NM}/$lcl_nm"
#    echo "cp -rf ${top_jk}/$lcl_src/paginations ${SRC_NM}/$lcl_nm"
#    echo "cp -rf ${top_jk}/$lcl_src/tags ${SRC_NM}/$lcl_nm"
#    echo "cp -rf ${top_jk}/$lcl_src/byisbn.md ${SRC_NM}/$lcl_nm"

}





function c2c3_Act {
    
    local act=$1
    local nm="c2c3"

    #
    #
    # echo " # Jk1 Args : $@"
    case "$1" in
        $nm-new0 | $nm-del ) Run0 Jk0_Del $c2c3_id ;;
        $nm-new0- | ${nm}-del ) Run1 Jk0_Del $c2c3_id ;;
        $nm-new1 | $nm-new ) Run0 Jk0_New $c2c3_id ;;
        $nm-new1- | $nm-new ) Run1 Jk0_New $c2c3_id ;;
        $nm-new2 | $nm-add ) Run0 ${nm}_Add $c2c3_id $C2C3_NM ;;
        $nm-new2- | $nm-add ) Run1 ${nm}_Add $c2c3_id $C2C3_NM ;;
        $nm-new3 | $nm-on ) Run0 Jk0_On $c2c3_id ;;
        $nm-new3- | $nm-on ) Run1 Jk0_On $c2c3_id ;;
    esac

}

c2c3_Act $1
