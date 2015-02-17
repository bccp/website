file=$1
(cat ${file//.wp}.meta; echo; echo; pandoc -t rst -f html $1 ) > ${file//.wp}.rst
