string=""
x=1
j=31000
while [ $x -le 6 ]
do
 string="touch randfile$((j+x)) && git add . && git commit -m '$((j+x)):randfile_$((j+x))'"
 echo $string
 eval "$string"
 x=$[$x+1]
done
push="git push origin sb_4"
echo $push
eval "$push"

