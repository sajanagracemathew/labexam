echo "What do you want to do?(1-3)"
echo "1.Reverse of a number"
echo "2.Directory exists or not"
echo "3.Largest of three numbers"
echo "Enter your choice"
read ch
case "$ch" in
1)echo "Enter a number"
read n
echo n > temp
rvs="$(rev temp)"
echo "Reverse of number is:$rvs"
;;
2)echo "Enter directory name"
read dir
if [-d $dir ]
then
echo "Directory exists"
else 
echo "Not exist"
mkdir $dir
echo "Directory successfully created"
fi
;;
3)echo "Enter first number"
read a
echo "Enter second number"
read b
echo "Enter third number"
read c
if [ $a -gt $b ]
then
if [ $a -gt $c ]
then
echo "$a is greatest"
else
echo "$b is greatest"
fi
elif [ $b -gt $c ]
then
echo "$b is greatest"
else
echo "$c is greatest"
fi
;;
*)echo "Invalid choice"
esac
