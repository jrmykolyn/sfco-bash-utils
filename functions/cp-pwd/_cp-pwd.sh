# --------------------------------------------------
# INITIALIZATION
# --------------------------------------------------
scriptName="cp-pwd"

export scriptsLoaded=$scriptsLoaded" "$scriptName


# --------------------------------------------------
# DECLARE FUNCTION
# --------------------------------------------------
# ...
function cp-pwd {
  $( pwd | pbcopy )

  echo "Copied current path to clipboard."
}
