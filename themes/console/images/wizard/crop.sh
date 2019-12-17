#! /usr/bin/env

#for i in logo*.png; do
#    convert -crop 481x112 $i progress-$i
#    convert -trim $i $i
#done

for i in undraw*.png; do
    mat2 $i
    mv -v *.cleaned.png $i
done
