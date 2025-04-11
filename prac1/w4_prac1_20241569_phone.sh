if [ $# -eq 0 ]
then
	echo "Usage: phone.sh searchfor [...searchfor]"
	echo "You didn't tell me what you want to search for"
	exit 1
fi

args=""
for arg in $@
do
	args+="${arg}|"
done
args=${args%?}

egrep -i $args mydata.txt > tmp
awk -f display.awk tmp

exit 0

# Sudo go home
