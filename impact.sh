#! /bin/sh
(echo "rev,lines changed"
git rev-list HEAD --since="1 year ago"|
while read rev;
do
  git show $rev --shortstat --format="%h" | tr "\\n" " " | awk '{t=$5+$7} {print $1 "," t } '
done)  
