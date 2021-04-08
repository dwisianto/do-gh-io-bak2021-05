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
top_blg=./wk/blg
#top_de=./wk/de
#top_op=./docs

#
#
#
. ${top_ss}/gbl/gbl.sh $top_args
. ${top_ss}/gt/g_branch.sh $top_args
. ${top_ss}/gt/g_master.sh $top_args
. ${top_ss}/gt/g_page.sh $top_args


#
# Development Operation Content Blog Bibliography
#
. ${top_ss}/c0/c0.sh
. ${top_ss}/c1/a/c1a.sh $top_args
#. ${top_ss}/c2/a/c2a.sh $top_args
#. ${top_jk}/c2/b-category/c2b.sh $top_args
. ${top_ss}/c2/b-category1/c2b1.sh $top_args
#. ${top_jk}/c2/b-category2/c2b2.sh $top_args
. ${top_ss}/c2/c-tags/c2c.sh $top_args
. ${top_ss}/c2/c-tags1/c2c1.sh $top_args
. ${top_ss}/c2/c-tags2/c2c2.sh $top_args
. ${top_ss}/c2/c-tags3/c2c3.sh $top_args
# . ${top_jk}/k1/k1.sh $top_args
# . ${top_jk}/k2/k2.sh $top_args
# . ${top_jk}/k3/k3.sh $top_args


#
# Operation
#



# Group
# Equations
# tags
# https://github.com/qian256/qian256.github.io/
