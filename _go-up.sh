# --------------------------------------------------
# INITIALIZATION
# --------------------------------------------------
scriptName="go-up"

export scriptsLoaded=$scriptsLoaded" "$scriptName


# --------------------------------------------------
# DECLARE FUNCTION
# --------------------------------------------------
# ...
function go-up {	
	# Declare vars.
	defaultPath=''

	# Parse args.
	if [ $1 -gt 0 ]; then
		echo "RECEIVED ARG. '$1'"

		for i in $(seq 1 $1); do
			defaultPath=$defaultPath'../'
		done
	else
		echo "DID NOT RECEIVE VALID ARGUMENTS"
		echo "NAVIGATING TO PARENT DIR."

		defaultPath='../'
	fi

	# Execute command.
	eval cd $defaultPath
}
