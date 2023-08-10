echo "file 1 name :"
read f1
echo "file 2 name :"
read f2

if [ -f $f1 ]
then
if [ -f $f2 ]
then
cmp $f1 $f2
 if [ $? -eq 0 ]; then
# if cmp $f1 $f2 >/dev/null
#then
echo same
rm $f2
else
echo different
touch new.txt
cat $f1 > new.txt
cat $f2 >> new.txt
fi
else
echo "second file not found"
fi
else
echo "first file not found"
fi