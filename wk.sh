#
# _site
# _layouts
# _includes
# _data
# _scss
#  assets
# _posts
#
# index.html
# about.md
#

#
#
#
top_args=$@ && echo " # Top Args : $top_args"
top_arg1=$1 && echo " # Top Arg1 : $top_arg1"
top_arg2=$2 && echo " # Top Arg2 : $top_arg2"

#
#
#
top_wk=./wk
top_os=./wk/os
top_ss=./wk/ss
top_jk=./wk/jk

#
#
#
. ${top_ss}/gbl/gbl.sh $top_arg1 $top_arg2
. ${top_ss}/gt/g_branch.sh $top_arg1 $top_arg2
. ${top_ss}/gt/g_master.sh $top_args
. ${top_ss}/gt/g_page.sh $top_args

#
#
#
. ${top_jk}/jkl/jkl.sh $top_arg1 $top_arg2
. ${top_jk}/j0/jk0.sh
. ${top_jk}/j1/jk1.sh $top_arg1 $top_arg2
. ${top_jk}/k2/k2.sh $top_arg1 $top_arg2


# Group
# Equations
# tags
# https://github.com/qian256/qian256.github.io/
