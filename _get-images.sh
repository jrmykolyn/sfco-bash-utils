# --------------------------------------------------
# INITIALIZATION
# --------------------------------------------------
scriptName="get-images"

export scriptsLoaded=$scriptsLoaded" "$scriptName


# --------------------------------------------------
# DECLARE FUNCTION
# --------------------------------------------------
# ...
function get-images {
	hostURL="http://lorempixel.com/"
	defaultWidth=1000
	defaultHeight=750
	defaultImageNum=5

	if [ -z $1 ]; then

		echo "DID NOT RECEIVE ANY ARGUMENTS"

	else

		echo "RECEIVED ARGUMENT(S)"
		echo $1

		# ... UPDATE FUNCTION TO RECEIVE ARGS.

	fi

	# /// TEMP
	for i in {1..5}; do
		curl "http://lorempixel.com/$defaultWidth/$defaultHeight/" > "image-$i.jpg"
	done
}
