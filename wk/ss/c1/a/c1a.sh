



#
#
#
function Jk2_New () {

    test $1 &&  echo " # arg exists" || echo " # arg missing"
    echo jekyll new $1
    #echo mv $1/index.markdown $1/index_md
    #echo cp ${jk0_loc}/index.html $1/index.html
    #echo cp ${jk0_loc}/_config.yml $1/_config.yml
    #echo cp ${jk0_loc}/Gemfile $1/Gemfile
    #echo cp ${jk0_loc}/archive.markdown $1/archive.markdown
    echo "mkdir $1/_layouts/"
    echo "cp ${jk0_loc}/_layouts/post.html $1/_layouts/"
    echo "cp ${jk0_loc}/_posts/* $1/_posts/"
}





#
#
#
#jk2_nm="jk2"
#jk2_loc=${top_jk}/${jk2_nm}

#echo " # k2 Args : $1"
#case "$1" in
#    jk2-new ) Jk2_New $jk2_nm ;;
#    jk2-on ) Jk0_On $jk2_nm ;;
#    jk2-del ) Jk0_Del $jk2_nm ;;
#esac
#
#
#
# development
#
function c1a_Main {

    local nm="c2b1"
    case "$1" in
        ${nm}-new0 | ${nm}-del )  Run0 Jk0_Del $nm ;;
        ${nm}-new1 | ${nm}-new )  Run0 Jk0_New $nm ;;
        ${nm}-new2 | ${nm}-add )  Run0 ${nm}_Add $C2B1_NM $nm ;;
        ${nm}-new3 | ${nm}-on )   Run0 Jk0_On $nm ;;
        ${nm}-new0- | ${nm}-del ) Run1 Jk0_Del $nm ;;
        ${nm}-new1- | ${nm}-new ) Run1 Jk0_New $nm ;;
        ${nm}-new2- | ${nm}-add ) Run1 ${nm}_Add $C2B1_NM $nm ;;
        ${nm}-new3- | ${nm}-on )  Run1 Jk0_On $nm ;;
    esac

}
c1a_Main "$@"

