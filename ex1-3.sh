#--------------/chapter1/ex1-3.sh----------------
#! /bin/bash

echo "$# parameters"
echo "$@"


#輸出參數索引
echo "OPTIND starts at $OPTIND"
#接收參數
while getopts ":pq:" optname 
	do
	case "$optname" in
		"p")
			echo "Option #optname is specified"
			;;
		"q")
			echo "Option #optname has value $OPTARG"
			;;
		"?")
			echo "Unknow Option $OPTARG"
			;;
		":")
			echo "No argument value for Option $OPTARG"
			;;
		*)
			#shoud not occured
			echo "Unknow Option error while proccessing options"
			;;
	esac
	echo "Option is now $OPTIND"
done
