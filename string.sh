
    

echo enter any string :- '\c'
read str
n=`expr $str : '.*'`
i=0
while [ $i -lt $n ]
do
str2=`expr $str : ".\{$i\}\(.\)"`$str2
#echo $str2
i=`expr $i + 1`
done
echo the reverse string is :- '\c'
echo $str2






#for each name($argv)
read name
if [ -f $name ] ; then
echo -n "delete the file '${name}' (y/n/q)?"
fi
read ans
case "$ans" in
n) continue;;
q) exit;;
y) rm -r $name
continue;;
*) echo "hi"
esac
