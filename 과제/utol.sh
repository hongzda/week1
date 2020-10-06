echo "working directory:"
read dir

if [ ! -d $dir ]	
then
	echo "Error: Directory "$dir" does not exist"
elif [ ! -w $dir ]
then
	echo "Error: Permission denied"
else
	if [ "$dir" != "" ]
	then
		cd "$dir"
	fi

	for i in *
	do
		j=$( echo $i | tr '[a-zA-Z]' '[A-Za-z]')
		mv $i $j
	done
fi
