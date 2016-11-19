# --------------------------------------------------
# INITIALIZATION
# --------------------------------------------------
scriptName="sfco-utils"

export scriptsLoaded=$scriptsLoaded" "$scriptName


# --------------------------------------------------
# DECLARE FUNCTION
# --------------------------------------------------
# ...
function sfco-utils {
	echo "--------------------------------------------------"
	echo "LOADED SCRIPTS:"
	echo "--------------------------------------------------"
	for script in $scriptsLoaded; do
		echo ">>> $script"
	done
}
