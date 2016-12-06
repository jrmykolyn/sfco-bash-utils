# --------------------------------------------------
# DECLARE VARS
# --------------------------------------------------
# Capture directory paths.
utilsRoot="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
functionsRoot="$utilsRoot/functions"

scriptsLoaded=""

export scriptsLoaded


# --------------------------------------------------
# INITIALIZE SCRIPTS
# --------------------------------------------------
source "$utilsRoot/_sfco-utils.sh"

source "$functionsRoot/get-images/_get-images.sh"
source "$functionsRoot/go-up/_go-up.sh"
source "$functionsRoot/mk-sass/_mk-sass.sh"
source "$functionsRoot/cp-pwd/_cp-pwd.sh"
