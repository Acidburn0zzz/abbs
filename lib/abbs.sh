abbscheckspec(){
	if [ ! -d $ABBS/repo/$1 ]
	then
		abdie "No such package specification $1."
	fi
	
}
abbstmpf(){
	while true
	do
		fn=/tmp/abbs-$RANDOM
		if [ ! -e $fn ]
		then
			touch $fn
			echo $fn
			return 0
		fi
	done
}
abbsallocenv(){
	while true
	do
		fn=$ABBSENVPOS/$1-`date -u +%y%m%d%H%M%S`-$RANDOM
		if [ ! -e $fn ]
		then
			mkdir $fn
			echo $fn
			return 0
		fi
	done
}
