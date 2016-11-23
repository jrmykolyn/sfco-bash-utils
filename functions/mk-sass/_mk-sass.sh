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
  defaultTargetDir='./'

  # Parse args.
  if [ -z "$1" ] || [ "$1" == "" ]; then
    echo "DID NOT RECEIVE ARGS."
  else

    # Assign partial and file-related vars.
    # TODO:
    # Update assignments below to be more legible.
    partialName=$1
    fileName="$defaultFilePrefix$partialName$defaultFileType"

    # Loop over received args.
    for arg in $@; do

      # Parse arguments, skip argument at position 1 (eg. 'partialName').
      if [ "$arg" != $1 ]; then

        case "$arg" in
          "-d")
            defaultTargetDir="$partialName/"
            [ -d "./$defaultTargetDir" ] || mkdir $defaultTargetDir
            ;;
          "--dir")
            defaultTargetDir="$partialName/"
            [ -d "./$defaultTargetDir" ] || mkdir $defaultTargetDir
            ;;
        esac
      fi
    done

    # Assign 'file path' (target directory plus concat'd file name).
    filePath="$defaultTargetDir$fileName"

    # Create and append file.
    echo '// --------------------------------------------------' >> "$filePath"
    echo '// VARIABLES ' >> "$filePath"
    echo '// --------------------------------------------------'  >> "$filePath"
    echo '// Add any SASS variables that are specific to this file here.' >> "$filePath"
    printf '\n\n' >> "$filePath"
    echo '// --------------------------------------------------'  >> "$filePath"
    echo '// PLACEHOLDERS '  >> "$filePath"
    echo '// --------------------------------------------------'  >> "$filePath"
    echo '// Write shared styles in placeholder rules here, then extend them from specific selectors below.'  >> "$filePath"
    printf '\n\n' >> "$filePath"
    echo '// --------------------------------------------------'  >> "$filePath"
    echo '// SELECTORS ' >> "$filePath"
    echo '// --------------------------------------------------'  >> "$filePath"
    echo '// Rules, logic, and anything else that can be compiled to "vanilla" CSS goes here.' >> "$filePath"
    printf '\n' >> "$filePath"
  fi
}
