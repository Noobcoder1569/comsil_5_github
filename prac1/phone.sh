if [ $# -eq 0 ]
then
	echo "Usage: phone.sh searchfor [...searchfor]"
	echo "You didn't tell me what you want to search for"
	exit 1
fi

args="cat mydata.txt"
for arg in $@
do
	args+=" | egrep -i ${arg}"
done

eval "$args" > tmp
awk -f display.awk tmp

exit 0

#sudo go home
