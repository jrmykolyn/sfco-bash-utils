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
	# Declare vars.
	hostURL="http://lorempixel.com/"
	defaultWidth=1000
	defaultHeight=750
	defaultImageNum=5
	defaultPrefix="image-"

	# Parse args:
	# If args. received, validate and update local vars.
	if [ -n "$1" ] && [ "$1" != "" ]; then

		for arg in $@; do
			param=$(echo "$arg" | cut -d "=" -f 1)
			value=$(echo "$arg" | cut -d "=" -f 2)

			if [ "$arg" != "$param" ]; then
				case "$param" in
					"-w")
						defaultWidth="$value"
						;;
					"--width")
						defaultWidth="$value"
						;;
					"-h")
						defaultHeight="$value"
						;;
					"--height")
						defaultHeight="$value"
						;;
					"-n")
						defaultImageNum="$value"
						;;
					"--num")
						defaultImageNum="$value"
						;;
					"-p")
						defaultPrefix="$value"
						;;
					"--prefix")
						defaultPrefix="$value"
						;;
				esac
			fi
		done
	# If args. *not* received, alert user.
	else

		echo "DID NOT RECEIVE ANY ARGUMENTS"

	fi

	# Inform user about num. and dimensions of images being fetched.
	echo "FETCHING $defaultImageNum IMAGES @ $defaultWidth BY $defaultHeight."

	# Fetch images.
	for i in $(seq 1 $defaultImageNum); do
		curl "http://lorempixel.com/$defaultWidth/$defaultHeight/" > "$defaultPrefix$i.jpg"
	done
}
