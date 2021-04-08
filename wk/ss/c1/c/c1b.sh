
jk1_nm="jk1"
jk1_loc=${top_jk}/${jk1_nm}


#
# 
#
function Jk1_New () {

    test $1 || echo " # arg $1 missing"
    echo jekyll new ${top_de}/$1
}




#
#
#
function Jk1_New_Bak () {

    test $1 || echo " # arg $1 missing"
    echo jekyll new $1
    echo "cp ${jk0_loc}/favicon.ico $1"
    echo "rm $1/index.markdown"
    echo "cp ${jk0_loc}/index.html $1/index.html"
    echo "cp ${jk0_loc}/_config.yml $1/_config.yml"
    echo "cp ${jk0_loc}/Gemfile $1/Gemfile"
    echo "cp ${top_blg}/* $1/_posts/"

    #echo "cp ${jk0_loc}/_layouts/post.html $1/_layouts/"    
    #echo mv $1/index.markdown $1/index_md
    #echo cp ${jk0_loc}/archive.markdown $1/archive.markdown
    #echo "mkdir $1/_layouts/"
    
}




#
#
#
echo " # jk1 Args : $1"
case "$1" in
    jk1-new0 | jk1-del ) Jk0_Del $jk1_nm ;;    
    jk1-new1 | jk1-new ) Jk1_New $jk1_nm ;;
    jk1-new2 | jk1-on ) Jk0_On $jk1_nm ;;
esac
