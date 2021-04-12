




#
# $1 : $d1_nm
# $2 : $SRC_NM
#function D1_New () {
#    #test $1 &&  echo " # arg exists" || echo " # arg missing"
#    echo "cd ${SRC_NM} ; jekyll new $d1_nm"
#}

function c2b1_Add () {

    #test $1 &&  echo " # arg exists" || echo " # arg missing"
    lcl_src=$1
    lcl_nm=$2
        
    echo "cp ${top_ss}/$lcl_src/_config.yml ${SRC_NM}/$lcl_nm"
    echo "cp ${top_ss}/$lcl_src/Gemfile ${SRC_NM}/$lcl_nm"
    echo "cp -rf ${top_ss}/$lcl_src/_includes ${SRC_NM}/$lcl_nm"
    echo "cp -rf ${top_ss}/$lcl_src/_layouts ${SRC_NM}/$lcl_nm"

    echo "cp  ${top_ss}/$lcl_src/index.md ${SRC_NM}/$lcl_nm"
    echo "rm -f ${SRC_NM}/$lcl_nm/index.markdown"

    echo "cp -rf ${top_ss}/$lcl_src/_posts ${SRC_NM}/$lcl_nm"
    echo "cp -rf ${top_ss}/$lcl_src/b_bib ${SRC_NM}/$lcl_nm"
    echo "cp -rf ${top_ss}/$lcl_src/_ml ${SRC_NM}/$lcl_nm"
    #echo "cp -rf ${top_ss}/$lcl_src/b_ml ${SRC_NM}/$lcl_nm"
    
    #echo "cp -rf ${top_ss}/$lcl_src/toyota ${SRC_NM}/$lcl_nm"
    #echo "cp -rf ${top_ss}/$lcl_src/books ${SRC_NM}/$lcl_nm"

}


#
# development
#
function c2b1_Main {

    local nm="c2b1"
    case "$1" in
        ${nm}-new0 | ${nm}-del )  Run0 Jk0_Del $nm ;;
        ${nm}-new1 | ${nm}-new )  Run0 Jk0_New $nm ;;
        ${nm}-new2 | ${nm}-add )  Run0 ${nm}_Add $C2B1_NM $nm ;;
        ${nm}-new3 | ${nm}-on )   Run0 Jk0_On $nm ;;
        ${nm}-new0- | ${nm}-del ) Run1 Jk0_Del $nm ;;
        ${nm}-new0-1- | ${nm}-new ) Run1 Jk0_New $nm ;;
        ${nm}-new0-1-2- | ${nm}-add ) Run1 ${nm}_Add $C2B1_NM $nm ;;
        ${nm}-new0-1-2-3- | ${nm}-on )  Run1 Jk0_On $nm ;;
    esac

}
c2b1_Main "$@"
