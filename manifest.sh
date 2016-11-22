# --------------------------------------------------
# DECLARE VARS
# --------------------------------------------------
# Capture current directory path.
utilsRoot="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
scriptsLoaded=""

export scriptsLoaded


# --------------------------------------------------
# INITIALIZE SCRIPTS
# --------------------------------------------------
source "$utilsRoot/_sfco-utils.sh"
source "$utilsRoot/_get-images.sh"
source "$utilsRoot/_go-up.sh"
source "$utilsRoot/_mk-sass.sh"
