# --------------------------------------------------
# INITIALIZATION
# --------------------------------------------------
scriptName="mk-sass"

export scriptsLoaded=$scriptsLoaded" "$scriptName


# --------------------------------------------------
# DECLARE FUNCTION
# --------------------------------------------------
# ...
function mk-sass {
  # Declare vars.
  
  # Parse args.
  if [ -z "$1" ] || [ "$1" == "" ]; then
    echo "DID NOT RECEIVE ARGS."
  else
    
    # Print file to current dir.
    touch "$1.scss"

    # Append file.
    echo '/* -------------------------------------------------- */' >> "$1.scss"
    echo '/* VARIABLES */' >> "$1.scss"
    echo '/* -------------------------------------------------- */'  >> "$1.scss"
    echo "// Add any SASS variables that are specific to this file here." >> "$1.scss"
    printf "\n\n" >> "$1.scss"
    echo '/* -------------------------------------------------- */'  >> "$1.scss"
    echo '/* PLACEHOLDERS */'  >> "$1.scss"
    echo '/* -------------------------------------------------- */'  >> "$1.scss"
    echo "// Write shared styles in placeholder rules here, then extend them from specific selectors below."  >> "$1.scss"
    printf "\n\n" >> "$1.scss"
    echo '/* -------------------------------------------------- */'  >> "$1.scss"  >> "$1.scss"
    echo '/* SELECTORS */' >> "$1.scss"
    echo '/* -------------------------------------------------- */'  >> "$1.scss"
    echo "// Rules, logic, and anything else that can be compiled to 'vanilla' CSS goes here." >> "$1.scss"
    printf "\n" >> "$1.scss"
  fi
}
