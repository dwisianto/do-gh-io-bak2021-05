

#
# Print and run commands
#
function Run0 { "$@" ;  }
function Run1 { echo "# $@" ; "$@" | bash ; }
function Run2 { echo "${@/eval/}" ; "$@" ; }

#
# d - development
# o - operation
# c - content
#
C0_NM=c0
C1A_NM=c1/a
C1B_NM=c1/b
C1C_NM=c1/c
C2A_NM=c2/a
C2B_NM=c2/b-category
C2B1_NM=c2/b-category1
C2B2_NM=c2/b-category2
C2C1_NM=c2/c-collect1
C2C2_NM=c2/c-collect2
C2C3_NM=c2/c-collect3


D1_NM=d1

# Branches
GH_MT=master
GH_PG=gh-pages

# Source
SRC_NM=src

# Input
DE_NM=src

# Output
OP_NM=docs


