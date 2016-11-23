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
  defaultFileType='.scss'
  defaultFilePrefix='_'

  # Parse args.
  if [ -z "$1" ] || [ "$1" == "" ]; then
    echo "DID NOT RECEIVE ARGS."
  else

    # Concatenate file name.
    # TODO:
    # Update assignment below so that string concat. is more legible.
    file="$defaultFilePrefix$1$defaultFileType"

    # Print file to current dir.
    touch "$file"

    # Append file.
    echo '// --------------------------------------------------' >> "$file"
    echo '// VARIABLES ' >> "$file"
    echo '// --------------------------------------------------'  >> "$file"
    echo '// Add any SASS variables that are specific to this file here.' >> "$file"
    printf '\n\n' >> "$file"
    echo '// --------------------------------------------------'  >> "$file"
    echo '// PLACEHOLDERS '  >> "$file"
    echo '// --------------------------------------------------'  >> "$file"
    echo '// Write shared styles in placeholder rules here, then extend them from specific selectors below.'  >> "$file"
    printf '\n\n' >> "$file"
    echo '// --------------------------------------------------'  >> "$file"
    echo '// SELECTORS ' >> "$file"
    echo '// --------------------------------------------------'  >> "$file"
    echo '// Rules, logic, and anything else that can be compiled to "vanilla" CSS goes here.' >> "$file"
    printf '\n' >> "$file"
  fi
}
