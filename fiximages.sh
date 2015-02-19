file=$1
basename=`basename $1`
grep -oE 'http://bccp.berkeley.edu/[^.]*\.[^.>]*' $1 | (mkdir images/${basename//.rst}; cd images/${basename//.rst}; xargs -n 1 wget )
sed --in-place -e 's;http://bccp.berkeley.edu/.*/\([^.]*\.[^.>]*\);/images/'${basename//.rst}'/\1;g' $file
